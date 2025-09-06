CREATE TABLE cars (
    id INT PRIMARY KEY,
    car_name VARCHAR(100),
    year INT,
    distance INT,
    owner INT,
    fuel VARCHAR(20),
    location VARCHAR(20),
    drive VARCHAR(20),
    type VARCHAR(50),
    price INT
);

-- Show all cars in the dataset

SELECT * FROM cars;


-- Count total number of cars available

SELECT COUNT(*) AS total_cars FROM cars;


-- Find distinct fuel types

SELECT DISTINCT fuel FROM cars;


-- List all unique car types

SELECT DISTINCT type FROM cars;


-- Get all cars manufactured after 2020

SELECT * FROM cars WHERE year > 2020;

-- Price Analysis

-- Find the most expensive car

SELECT car_name, price FROM cars ORDER BY price DESC LIMIT 1;


-- Find the cheapest car

SELECT car_name, price FROM cars ORDER BY price ASC LIMIT 1;


-- Average price of cars by fuel type

SELECT fuel, AVG(price) AS avg_price FROM cars GROUP BY fuel;


-- Top 5 most expensive SUVs

SELECT car_name, price FROM cars 
WHERE type = 'SUV'
ORDER BY price DESC LIMIT 5;


-- Cars priced between 5 Lakhs and 10 Lakhs

SELECT * FROM cars WHERE price BETWEEN 500000 AND 1000000;

-- Distance & Usage

-- Average distance driven by fuel type

SELECT fuel, AVG(distance) AS avg_distance FROM cars GROUP BY fuel;


-- Car with the highest distance driven

SELECT car_name, distance FROM cars ORDER BY distance DESC LIMIT 1;


-- Find cars driven less than 10,000 km

SELECT * FROM cars WHERE distance < 10000;


-- Top 5 least used cars (minimum distance)

SELECT car_name, distance FROM cars ORDER BY distance ASC LIMIT 5;

-- Location & Owner Analysis

Count cars available by location

SELECT location, COUNT(*) AS total FROM cars GROUP BY location ORDER BY total DESC;


-- Cars with more than 2 previous owners

SELECT * FROM cars WHERE owner > 2;


-- Average price of cars by owner count

SELECT owner, AVG(price) AS avg_price FROM cars GROUP BY owner;

-- Drive & Type Analysis

Count of Manual vs Automatic cars

SELECT drive, COUNT(*) AS total FROM cars GROUP BY drive;


-- Most popular car type (highest count)

SELECT type, COUNT(*) AS total FROM cars GROUP BY type ORDER BY total DESC LIMIT 1;


-- Average price of cars by type

SELECT type, AVG(price) AS avg_price FROM cars GROUP BY type;
