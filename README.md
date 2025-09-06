# 🚗 Cars SQL Analysis Project  

This project is a SQL database and query analysis built on a dataset of used cars. The dataset contains information such as **Car Name, Year, Distance Driven, Owners, Fuel Type, Location, Drive Type, Car Type, and Price**.  

## 📂 Dataset  
The dataset `cars_24_combined.csv` includes details of cars listed across various Indian states with attributes useful for analytics.  

### Columns:
- `Car Name` – Model of the car  
- `Year` – Manufacturing year  
- `Distance` – Kilometers driven  
- `Owner` – Number of owners  
- `Fuel` – Petrol/Diesel/CNG/Electric  
- `Location` – Registration state code  
- `Drive` – Manual/Automatic  
- `Type` – SUV, Sedan, Hatchback, etc.  
- `Price` – Price in INR  

---

## 🛠 Database Schema  

```sql
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
