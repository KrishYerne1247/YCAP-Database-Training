
/*
 * Run these commands in MongoDB Compass mongosh.
 */

// 1. Select the database
use("ecom");

// 2. Display all products
db.products.find({});

// 3. Find products costing more than ₹1000
db.products.find({
    price: { $gt: 1000 }
});

// 4. Find a product by name
db.products.findOne({
    name: "Wireless Mouse"
});

// 5. Update the price of a product
db.products.updateOne(
    { name: "Wireless Mouse" },
    { $set: { price: 899 } }
);

// 6. Display products in the Electronics category
db.products.find({
    category: "Electronics"
});

// 7. Sort products by price, highest first
db.products.find({}).sort({
    price: -1
});

// 8. Display only the first five products
db.products.find({}).limit(5);

// 9. Count all products
db.products.countDocuments({});

// 10. View orders
db.orders.find({});

// 11. View contacts
db.contacts.find({});