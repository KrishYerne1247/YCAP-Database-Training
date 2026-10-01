CREATE DATABASE newdb;
use newdb;
create table tb2(
rollno int primary key,
fullname varchar(50) not null,
branch char(5) default 'AI&DS',
mark tinyint,
grade char(1),
fezz float default 6500.18,
addr varchar(100) 
);
describe tb2;

alter table tb2
modify addr varchar(100) unique;
 alter table tb2
 change fezz fees float default 6500.78;
 
SELECT * FROM tb2;
select * from tb2 where mark>=80;

TRUNCATE TABLE tb2;
 INSERT INTO tb2 (rollno, fullname,branch, mark, grade,fees, addr) VALUES
(101, 'Aarav Sharma',       'AIDSA', 87, 'A',  6500.18, 'Jaripatka, Nagpur'),
(102, 'Ananya Patil',       'AIDSA', 92, 'A',  7200.50, 'Manish Nagar, Nagpur'),
(103, 'Rohan Deshmukh',     'AIML',  78, 'B',  6500.18, 'Besa, Nagpur'),
(104, 'Sneha Kulkarni',     'AIDSA', 85, 'A',  6800.00, 'Dharampeth, Nagpur'),
(105, 'Aditya Joshi',       'DSC',   74, 'B',  6500.18, 'Trimurti Nagar, Nagpur'),
(106, 'Priya Nair',         'AIDSA', 96, 'A',  7500.75, 'Sadar, Nagpur'),
(107, 'Rahul Shinde',       'DSC',   68, 'C',  6500.18, 'Wadi, Nagpur'),
(108, 'Kavya Verma',        'AIML',  89, 'A',  6900.25, 'Mihan, Nagpur'),
(109, 'Vivek Tiwari',       'AIDSA', 81, 'A',  6500.18, 'Manewada, Nagpur'),
(110, 'Isha Gupta',         'DSC',   76, 'B',  7100.00, 'Hudkeshwar, Nagpur'),

(111, 'Siddharth Rao',      'AIML',  91, 'A',  6500.18, 'Wardhaman Nagar, Nagpur'),
(112, 'Neha Pawar',         'AIDSA', 83, 'A',  6800.50, 'Nandanvan, Nagpur'),
(113, 'Kunal Yadav',        'DSC',   59, 'C',  6500.18, 'Mahal, Nagpur'),
(114, 'Pooja Choudhary',    'AIML',  88, 'A',  7300.00, 'Civil Lines, Nagpur'),
(115, 'Akash More',         'AIDSA', 72, 'B',  6500.18, 'Pardi, Nagpur'),
(116, 'Megha Borkar',       'DSC',   94, 'A',  7600.00, 'Khamla, Nagpur'),
(117, 'Yash Thakur',        'AIML',  65, 'C',  6500.18, 'Rameshwari, Nagpur'),
(118, 'Simran Kaur',        'AIDSA', 79, 'B',  6900.75, 'Lakadganj, Nagpur'),
(119, 'Omkar Wankhede',     'DSC',   86, 'A',  6500.18, 'Kamptee Road, Nagpur'),
(120, 'Tanvi Mishra',       'AIML',  90, 'A',  7100.50, 'Koradi Road, Nagpur'),

(121, 'Harsh Vaidya',       'AIDSA', 77, 'B',  6500.18, 'Gorewada, Nagpur'),
(122, 'Riya Sahu',          'DSC',   93, 'A',  7400.00, 'Panchpaoli, Nagpur'),
(123, 'Manav Agrawal',      'AIML',  71, 'B',  6500.18, 'Ayodhya Nagar, Nagpur'),
(124, 'Sakshi Bhoyar',      'AIDSA', 84, 'A',  6800.25, 'Dighori, Nagpur'),
(125, 'Nikhil Bansode',     'DSC',   62, 'C',  6500.18, 'Mankapur, Nagpur'),
(126, 'Aditi Gawande',      'AIML',  95, 'A',  7700.00, 'Friends Colony, Nagpur'),
(127, 'Dev Malviya',        'AIDSA', 80, 'B',  6500.18, 'Shankar Nagar, Nagpur'),
(128, 'Shreya Dube',        'DSC',   87, 'A',  7000.00, 'Pratap Nagar, Nagpur'),
(129, 'Mohit Kapse',        'AIML',  69, 'C',  6500.18, 'Omkar Nagar, Nagpur'),
(130, 'Anushka Raut',       'AIDSA', 91, 'A',  7200.00, 'Bardi, Nagpur'),

(131, 'Ayush Chavan',       'DSC',   75, 'B',  6500.18, 'Kharbi, Nagpur'),
(132, 'Muskan Khan',        'AIML',  89, 'A',  6800.00, 'Jafar Nagar, Nagpur'),
(133, 'Tejas Zade',         'AIDSA', 64, 'C',  6500.18, 'Bharat Nagar, Nagpur'),
(134, 'Nandini Raut',       'DSC',   98, 'A',  7900.00, 'Laxmi Nagar, Nagpur'),
(135, 'Parth Soni',         'AIML',  82, 'A',  6500.18, 'Shastri Nagar, Nagpur'),
(136, 'Diya Mahajan',       'AIDSA', 73, 'B',  6900.00, 'Ramdaspeth, Nagpur'),
(137, 'Arjun Kale',         'DSC',   88, 'A',  6500.18, 'Somalwada, Nagpur'),
(138, 'Mansi Patil',        'AIML',  79, 'B',  7100.00, 'Telankhedi, Nagpur'),
(139, 'Saurabh Bhat',       'AIDSA', 67, 'C',  6500.18, 'Itwari, Nagpur'),
(140, 'Komal Wagh',         'DSC',   92, 'A',  7500.00, 'Gandhibagh, Nagpur'),

(141, 'Varun Jadhav',       'AIML',  85, 'A',  6500.18, 'Nehru Nagar, Nagpur'),
(142, 'Ritika Singh',       'AIDSA', 78, 'B',  6800.00, 'Chhatrapati Nagar, Nagpur'),
(143, 'Akshay Bhagat',      'DSC',   90, 'A',  6500.18, 'Somalwada Extension, Nagpur'),
(144, 'Pallavi Wankhede',   'AIML',  61, 'C',  7200.00, 'Jaitala, Nagpur'),
(145, 'Vishal Dandekar',    'AIDSA', 83, 'A',  6500.18, 'Dattawadi, Nagpur'),
(146, 'Rashmi Korde',       'DSC',   97, 'A',  7600.00, 'Seminary Hills, Nagpur'),
(147, 'Chirag Sahu',        'AIML',  70, 'B',  6500.18, 'Beltarodi, Nagpur'),
(148, 'Sana Sheikh',        'AIDSA', 86, 'A',  6900.00, NULL),
(149, 'Abhishek Pande',     'DSC',   NULL, NULL, 6500.18, 'Medical Square, Nagpur'),
(150, 'Ishita Joshi',       'AIML',  NULL, NULL, NULL, NULL);

SET SQL_SAFE_UPDATES = 0;

update tb2 
set branch= 'art', addr='YCCE'
WHERE (branch is NUll OR  addr is null);

-- to remove constraints from a column we use "DROP INDEX "COL_NAME";"
ALTER table tb2
drop index addr;

select * from tb2 where addr is null;

-- to create an index 
CREATE INDEX indx_addr
on tb2(addr);
-- to show an index 
show indexes from tb2 ;

-- to drop an index
-- drop index "index name" form " table name"

-- to update null value , using subqueries , will not throw an error of  we cant specify target table in update in form clause 
update tb2
SET grade = (
    SELECT max_grade FROM (SELECT max(grade) AS max_grade FROM tb2) AS temp
)
where grade is null;

UPDATE tb2
SET mark = (
    SELECT avg_mark
    FROM (SELECT AVG(mark) AS avg_mark FROM tb2) AS temp
)
WHERE mark IS NULL;
 
 -- as we can see use temp for storing the value 2 types but it didn't collide because variable is not important it last only for nested sub query, while max_grade is important and is overwritten and truncate command has run by default.
 update tb2
 SET fees = (
    SELECT min_fees
    FROM (SELECT min(fees) AS min_fees FROM tb2) AS temp)

WHERE fees IS NULL;

SELECT * FROM tb2;

set @min_f =(select min(fees) from tb2 );

update tb2 
set fees= 7000 
where fees= @min_f;

select * from tb2
where fullname like 'V%';

select * from tb2
where fullname like '%v';

select * from tb2
where fullname like '%av%';

select * from tb2
where fullname like '___________';


-- PATTERN MATCHING 
-- 'A%'     → starts with A
-- '%A'     → ends with A
-- '%A%'    → contains A
-- '_A%'    → second character is A
-- '_____ ' → exactly 5 characters

SELECT grade,count(grade) from tb2
group by grade;

SELECT grade, count(distinct grade) from tb2
group by grade;

SELECT count(*) from tb2; -- number of rows

SELECT grade,count(grade) from tb2 
group by grade;

USE newdb;
CREATE TABLE projects (
    proj_id INT,
    rollno INT,
    project_mark TINYINT,
    proj_subject VARCHAR(100),
    guide VARCHAR(50),
    cost FLOAT,
    completion_date DATE,

    PRIMARY KEY (proj_id, rollno),

    FOREIGN KEY (rollno)
        REFERENCES tb2(rollno),

    CHECK (project_mark BETWEEN 0 AND 100), -- 0 and 100 is also included in between.
    CHECK (cost >= 0)
);

INSERT INTO projects
(proj_id, rollno, project_mark, proj_subject, guide, cost, completion_date)
VALUES

(201, 101, 88, 'Smart Electricity Consumption Monitor', 'Dr. Mehta', 18500.00, '2026-02-10'),
(201, 102, 84, 'Smart Electricity Consumption Monitor', 'Dr. Mehta', 18500.00, '2026-02-10'),

(202, 103, 92, 'Machine Learning Power Demand Prediction', 'Prof. Kulkarni', 22000.00, '2026-02-18'),
(202, 105, 79, 'Machine Learning Power Demand Prediction', 'Prof. Kulkarni', 22000.00, '2026-02-18'),

(203, 104, 86, 'AI Based Energy Usage Forecasting', 'Dr. Patil', 19500.00, '2026-03-01'),
(203, 106, 94, 'AI Based Energy Usage Forecasting', 'Dr. Patil', 19500.00, '2026-03-01'),

(204, 107, 72, 'Solar Panel Fault Detection System', 'Prof. Sharma', 16000.00, '2026-03-05'),
(204, 108, 90, 'Solar Panel Fault Detection System', 'Prof. Sharma', 16000.00, '2026-03-05'),

(205, 109, 85, 'Predictive Motor Maintenance Using Data', 'Dr. Rao', 25000.00, '2026-03-12'),

(206, 110, 78, 'IoT Based Transformer Health Monitoring', 'Prof. Joshi', 28000.00, NULL),
(206, 111, 91, 'IoT Based Transformer Health Monitoring', 'Prof. Joshi', 28000.00, NULL),

(207, 112, 87, 'Electric Vehicle Battery Health Prediction', 'Dr. Mehta', 32000.00, '2026-03-20'),
(207, 114, 89, 'Electric Vehicle Battery Health Prediction', 'Dr. Mehta', 32000.00, '2026-03-20'),

(208, 113, 68, 'Deep Learning Load Forecasting Model', 'Prof. Kulkarni', 24000.00, '2026-03-25'),

(209, 115, 81, 'Real Time Power Quality Analysis', 'Dr. Patil', 17500.00, '2026-04-02'),
(209, 116, 95, 'Real Time Power Quality Analysis', 'Dr. Patil', 17500.00, '2026-04-02'),

(210, 117, 73, 'AI Based Street Light Controller', 'Prof. Sharma', 12500.00, '2026-04-08'),
(210, 118, 82, 'AI Based Street Light Controller', 'Prof. Sharma', 12500.00, '2026-04-08'),

(211, 119, 88, 'Electrical Equipment Failure Prediction', 'Dr. Rao', 21000.00, '2026-04-12'),
(211, 120, 93, 'Electrical Equipment Failure Prediction', 'Dr. Rao', 21000.00, '2026-04-12'),

(212, 121, 76, 'Smart Grid Load Balancing System', 'Dr. Mehta', 35000.00, NULL),
(212, 122, 90, 'Smart Grid Load Balancing System', 'Dr. Mehta', 35000.00, NULL),

(213, 123, 71, 'Household Energy Usage Classification', 'Prof. Joshi', 14500.00, '2026-04-18'),

(214, 124, 89, 'Wind Turbine Performance Prediction', 'Dr. Patil', 27000.00, '2026-04-21'),
(214, 126, 96, 'Wind Turbine Performance Prediction', 'Dr. Patil', 27000.00, '2026-04-21'),

(215, 125, NULL, 'Electricity Theft Detection Using ML', 'Prof. Sharma', NULL, NULL),

(216, 127, 83, 'Battery Charging Time Prediction Model', 'Dr. Rao', 19000.00, '2026-05-02'),
(216, 128, 86, 'Battery Charging Time Prediction Model', 'Dr. Rao', 19000.00, '2026-05-02'),

(217, 129, 74, 'Power Consumption Anomaly Detection', 'Dr. Mehta', 15500.00, '2026-05-08'),

(218, 130, 92, 'Smart Home Energy Optimization System', 'Prof. Kulkarni', 23000.00, '2026-05-12'),

(219, 131, 80, 'Transformer Fault Classification Using ML', 'Dr. Patil', 26000.00, NULL),
(219, 132, 88, 'Transformer Fault Classification Using ML', 'Dr. Patil', 26000.00, NULL),

(220, 133, 69, 'Solar Energy Generation Prediction', 'Prof. Joshi', 18000.00, '2026-05-20'),

(221, 134, 97, 'AI Based Motor Fault Diagnosis', 'Dr. Rao', 21500.00, '2026-05-24'),
(221, 135, 91, 'AI Based Motor Fault Diagnosis', 'Dr. Rao', 21500.00, '2026-05-24'),

(222, 136, 75, 'Power Demand Forecasting Using Regression', 'Dr. Mehta', 17000.00, '2026-05-28'),

(223, 137, 89, 'Electric Vehicle Charging Station Analysis', 'Prof. Sharma', 30000.00, '2026-06-03'),
(223, 138, 85, 'Electric Vehicle Charging Station Analysis', 'Prof. Sharma', 30000.00, '2026-06-03'),

(224, 139, 70, 'Distribution Transformer Load Analysis', 'Prof. Kulkarni', 14000.00, '2026-06-08'),

(225, 140, 94, 'Smart Meter Data Analytics Dashboard', 'Dr. Patil', 19500.00, '2026-06-12'),
(225, 141, 90, 'Smart Meter Data Analytics Dashboard', 'Dr. Patil', 19500.00, '2026-06-12'),

(226, 142, 82, 'Electrical Demand Pattern Classification', 'Dr. Rao', 16500.00, '2026-06-15'),

(227, 143, 93, 'AI Based Solar Tracking System', 'Dr. Mehta', 29000.00, '2026-06-20'),

(228, 144, 67, 'Energy Consumption Forecasting Dashboard', 'Prof. Joshi', 15500.00, NULL),

(229, 145, 85, 'Industrial Motor Energy Optimization', 'Prof. Sharma', 20500.00, '2026-06-25'),

(230, 146, 96, 'Power System Fault Prediction', 'Dr. Patil', 27000.00, '2026-06-28');

select * from projects;
select * from tb2;

select count(distinct proj_subject) from projects;

select count(*) from projects;
-------------------------------------------
set @avg_m = (select avg(mark) from tb2) ; -- make it global so that where can access it.
select fullname,mark from tb2
where mark>= @avg_m;
-- alternate no memory wastage
select fullname,mark from tb2
where mark>=(select avg(mark) from tb2) ;

-- to find branches name where students of that branches have scored highest / more than 90 marks. 

CREATE VIEW projview as select proj_id,rollno,proj_subject , guide from projects;
select * from projview
where guide = "Dr. Patil";

-- USE "START TRANSACTION" to start recoding the script and working so that when we "ROLLBACK" we can go back and undo .
 
-- UPDATING VALUE INSIDE TABLE
select rollno , proj_subject, project_mark , project_mark + 10 as newprojmark from projects;


-- LOGICAL OPERATOR , <> (NOT GREATER THAN NOT EQUAL TO) BELOW ALL THREE GIVES SAME OUTPUT , ALL OPERATORS ARE SAME.
SELECT branch FROM tb2
where NOT (branch = 'AIML');

SELECT branch FROM tb2
where branch <> 'AIML';

SELECT branch FROM tb2
where branch != 'AIML';

-- IN OPERATOR -> used when we want to check value belongs to one of several values.
SELECT * FROM tb2
where branch in ('AIDSA' , 'AIML');

-- UNION vs JOIN
-- UNION either add two queries or join the other table at the down side /increases row number (bad with handling tables good with connecting query)
-- JOIN connects two table by side / increases column number (good with tables)


select rollno, branch , mark from tb2
union
select proj_id , proj_subject, project_mark from projects;

select tb2.rollno, tb2.branch , tb2.mark ,projects.rollno , projects.proj_subject, projects.project_mark 
from tb2 inner join projects
on tb2.rollno = projects.rollno;

-- approach 1 to fetch students who have project allotment
CREATE VIEW allot as 
select tb2.fullname , projects.proj_subject 
from tb2 inner join projects
on tb2.rollno = projects.rollno;

select count(*) from allot;
-- approach 2
select tb2.fullname , projects.proj_subject 
from tb2  join projects
on tb2.rollno = projects.rollno;

select count(*) 
from tb2 inner join projects
on tb2.rollno = projects.rollno;

-- COUNT(*) OVER() counts number of rows created by join but did not collapse them into single row
select tb2.fullname , projects.proj_subject , count(*) over()
from tb2  join projects
on tb2.rollno = projects.rollno;

------------------------------
select tb2.fullname , projects.proj_subject 
from tb2  join projects
on tb2.rollno = projects.rollno
union
select  count(*) over(),count(*) over()
from tb2  join projects
on tb2.rollno = projects.rollno;
--------------------------------------
select tb2.fullname , projects.proj_subject 
from tb2  left join projects
on tb2.rollno = projects.rollno
union
select  count(*) over(),count(*) over()
from tb2 left join projects
on tb2.rollno = projects.rollno
union
select  count(*) over(),count(*) over()
from tb2 left join projects
on tb2.rollno = projects.rollno
where proj_subject is null;

-------------------------------------------- counting columns of a table.
set @c= (select count(*) from projects.columns);
SELECT COLUMN_NAME , count(*) over()
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'newdb'
  AND TABLE_NAME = 'projects';
  
-- 
create view allot as
select tb2.fullname , projects.proj_subject 
from tb2  left join projects
on tb2.rollno = projects.rollno ;

-- FIND DUPLICATES # students working on same project

select p1.proj_id as prj_id, p1.rollno as student1,p2.rollno as student2
from projects p1 inner join projects p2
on p1.proj_id = p2.proj_id 
and p1.rollno < p2.rollno; -- to remove duplicate entries like a=b, b=a

#sum of stu_marks amd pro_marks
 select tb2.roll_No,tb2.marks ,projects.proj_mark, tb2.marks + projects.proj_mark as total_marks
 from tb2 inner join projects
 on tb2.roll_No = projects.stud_id;
