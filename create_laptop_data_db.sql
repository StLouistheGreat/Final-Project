
CREATE DATABASE IF NOT EXISTS laptop_data_db;

USE laptop_data_db;

CREATE TABLE IF NOT EXISTS laptops (
    Company VARCHAR(50),
    TypeName VARCHAR(50),
    Inches FLOAT,
    ScreenResolution VARCHAR(100),
    Cpu VARCHAR(100),
    Ram VARCHAR(10),
    Memory VARCHAR(50),
    Gpu VARCHAR(100),
    OpSys VARCHAR(50),
    Weight FLOAT,
    Price FLOAT,
    Touchscreen INT,
    Ips INT,
    ppi FLOAT,
    Cpu_brand VARCHAR(50),
    HDD INT,
    SSD INT,
    Gpu_brand VARCHAR(50),
    os VARCHAR(50)
);

LOAD DATA LOCAL INFILE '/Users/bengeladoma/Downloads/create_laptop_data_db.sql'
INTO TABLE laptops
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
