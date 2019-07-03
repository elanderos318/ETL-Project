-- create this database before connecting to it in the jupyter notebook
CREATE DATABASE Speed_Violations_DB;
USE Speed_Violations_DB;


-- Run the code below after creating the table in jupyter notebook

-- add in an ID variable to be the primary key
ALTER TABLE speed_violations_weather
ADD Table_ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL;

-- reorder columns in the table
ALTER TABLE `speed_violations_db`.`speed_violations_weather` 
CHANGE COLUMN `Table_ID` `Table_ID` INT(11) NOT NULL AUTO_INCREMENT FIRST,
CHANGE COLUMN `CAMERA ID` `CAMERA ID` TEXT NULL DEFAULT NULL AFTER `Table_ID`,
CHANGE COLUMN `DATE` `DATE` TEXT NULL DEFAULT NULL AFTER `CAMERA ID`,
CHANGE COLUMN `ADDRESS` `ADDRESS` TEXT NULL DEFAULT NULL AFTER `DATE`;