
CREATE SCHEMA IF NOT EXISTS deathsopioid;
USE deathsopioid;

USE deathsopioid; 
CREATE TABLE deaths(
`State` VARCHAR(50) NOT NULL,
`YEAR` YEAR NOT NULL,
`Deaths` VARCHAR(50) NOT NULL,
`Population` INTEGER NOT NULL,
`Crude Rate` VARCHAR(50) NOT NULL,
 `Crude Rate Lower 95% Confidence Interval` VARCHAR(50) NOT NULL,
 `Crude Rate Upper 95% Confidence Interval` VARCHAR(50) NOT NULL,
 `Prescriptions Dispensed by US Retailers in that year (millions)` INTEGER NOT NULL); 


-- load table
LOAD DATA INFILE 'c:/Program Files/MySQL/Uploads/opioiddeaths.csv'
INTO TABLE deaths
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES;

select * from opioiddeaths;
 

