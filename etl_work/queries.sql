CREATE DATABASE austin_crime_housing_db;
USE austin_crime_housing_db;

-- Create tables for raw data to be loaded into
CREATE TABLE crime (

  id INT PRIMARY KEY AUTO_INCREMENT,
  Zip INT,
  Total_Affordable_Units_per_Zip INT,
  Council_District TEXT,
  Highest_Offense_Desc TEXT,
  Offense TEXT,
  Report_Date DATE, 
  Location TEXT,
  Clearance_Status TEXT,
  Clearance_Date DATE,
  District TEXT,
  Census_Tract TEXT,
  X_Coordinate DOUBLE,
  Y_Coordinate DOUBLE
);
