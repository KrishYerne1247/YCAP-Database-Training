
const { MongoClient } = require("mongodb");
const readline = require("readline/promises");
const { stdin: input, stdout: output } = require("process");

const client = new MongoClient("mongodb://127.0.0.1:27017");

const rl = readline.createInterface({ input, output });

async function main() {
    try {
        await client.connect();
        console.log("\nConnected to MongoDB!");

        const db = client.db("ecom");
        const products = db.collection("products");

        let running = true;

        while (running) {
            console.log(`
========== E-COMMERCE PRODUCT MANAGER ==========
1. View all products
2. Search product by name
3. Add a product
4. Update product price
5. Delete a product
6. Show products above ₹1000
0. Exit
================================================`);

            const choice = (await rl.question("Enter choice: ")).trim();

            switch (choice) {
                case "1": {
                    const data = await products.find({}).toArray();
                    console.table(data.map(({ _id, ...p }) => p));
                    console.log("Total products:", data.length);
                    break;
                }

                case "2": {
                    const name = await rl.question("Product name: ");
                    const product = await products.findOne({
                        name: { $regex: name.trim(), $options: "i" }
                    });

                    console.log(product || "Product not found.");
                    break;
                }

                case "3": {
                    const name = (await rl.question("Product name: ")).trim();
                    const price = Number(await rl.question("Price: "));
                    const category = (await rl.question("Category: ")).trim();
                    const stock = Number(await rl.question("Stock: "));

                    if (!name || !category ||
                        !Number.isFinite(price) || price <= 0 ||
                        !Number.isInteger(stock) || stock < 0) {
                        console.log("Invalid input. Check name, category, price and stock.");
                        break;
                    }

                    const result = await products.insertOne({
                        name,
                        price,
                        category,
                        stock,
                        createdAt: new Date()
                    });

                    console.log("Product added! ID:", result.insertedId);
                    break;
                }

                case "4": {
                    const name = (await rl.question("Product name: ")).trim();
                    const price = Number(await rl.question("New price: "));

                    if (!name || !Number.isFinite(price) || price <= 0) {
                        console.log("Enter a valid name and positive price.");
                        break;
                    }

                    const result = await products.updateOne(
                        { name },
                        { $set: { price } }
                    );

                    console.log("Matched:", result.matchedCount,
                        "| Modified:", result.modifiedCount);
                    break;
                }

                case "5": {
                    const name = (await rl.question(
                        "Exact product name to delete: "
                    )).trim();

                    if (!name) {
                        console.log("Product name cannot be empty.");
                        break;
                    }

                    const confirm = (
                        await rl.question(`Delete "${name}"? (yes/no): `)
                    ).trim().toLowerCase();

                    if (confirm !== "yes") {
                        console.log("Deletion cancelled.");
                        break;
                    }

                    const result = await products.deleteOne({ name });
                    console.log("Products deleted:", result.deletedCount);
                    break;
                }

                case "6": {
                    const data = await products
                        .find({ price: { $gt: 1000 } })
                        .toArray();

                    console.table(data.map(({ _id, ...p }) => p));
                    console.log("Matching products:", data.length);
                    break;
                }

                case "0":
                    running = false;
                    console.log("Thank you for using the product manager!");
                    break;

                default:
                    console.log("Invalid choice. Please try again.");
            }
        }
    } catch (error) {
        console.error("Error:", error.message);
    } finally {
        rl.close();
        await client.close();
    }
}

main();