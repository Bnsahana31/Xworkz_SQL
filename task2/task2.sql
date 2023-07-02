
USE june7th;
 CREATE TABLE Phone (id INT ,brand VARCHAR(100),model VARCHAR(100),storage_capacity INT,
 price INT,release_date DATE,operating_system VARCHAR(50),rear_camera_resolution VARCHAR(50),
 front_camera_resolution VARCHAR(50),battery_capacity INT); 
  desc Phone;
  ALTER TABLE Phone ADD COLUMN phone_id int;
  ALTER TABLE Phone ADD COLUMN phone_brand varchar(20);
  ALTER TABLE Phone ADD COLUMN phone_model varchar(20);
  ALTER TABLE Phone ADD COLUMN phone_s_capacity int;
  ALTER TABLE Phone ADD COLUMN phone_price int;
  ALTER TABLE Phone ADD COLUMN phone_release_date DATE;
  ALTER TABLE Phone ADD COLUMN phone_OS varchar(20);
  ALTER TABLE Phone ADD COLUMN phone_camera varchar(20);
  ALTER TABLE Phone ADD COLUMN phone_f_camera varchar(20);
  ALTER TABLE Phone ADD COLUMN phone_b_capacity int;
  desc Phone;
  ALTER TABLE Phone DROP COLUMN phone_b_capacity;
  ALTER TABLE Phone DROP COLUMN phone_f_camera;
  ALTER TABLE Phone MODIFY  COLUMN phone_camera int;
  ALTER TABLE Phone MODIFY  COLUMN phone_price double;
  ALTER TABLE Phone RENAME COLUMN phone_s_capacity TO s_capacity;
  ALTER TABLE Phone RENAME COLUMN brand TO p_brand;
  ALTER TABLE Phone RENAME COLUMN model TO p_model;
  ALTER TABLE Phone RENAME COLUMN price  TO p_price;
 
  CREATE TABLE SWEET(SWEET_ID INT);
  ALTER TABLE SWEET ADD COLUMN name VARCHAR(100);
  ALTER TABLE SWEET ADD COLUMN category VARCHAR(50);
  ALTER TABLE SWEET ADD COLUMN description varchar(20);
  ALTER TABLE SWEET ADD COLUMN calories int;
  ALTER TABLE SWEET ADD COLUMN price int;
  ALTER TABLE SWEET ADD COLUMN manufacturer VARCHAR(100);
  ALTER TABLE SWEET ADD COLUMN origin_country VARCHAR(50);
  ALTER TABLE SWEET ADD COLUMN production_date DATe;
  ALTER TABLE SWEET ADD COLUMN  expiry_date DATE;
  ALTER TABLE SWEET ADD COLUMN weight int;
  desc SWEET;
  ALTER TABLE SWEET DROP COLUMN name;
  ALTER TABLE SWEET DROP COLUMN category;
  ALTER TABLE SWEET MODIFY  COLUMN   description int;
  ALTER TABLE SWEET MODIFY  COLUMN calories VARCHAR(50);
  ALTER TABLE SWEET RENAME COLUMN price TO s_price;
  ALTER TABLE SWEET RENAME COLUMN manufacturer TO s_manufacturer ;
  ALTER TABLE SWEET RENAME COLUMN  origin_country TO  s_origin_country;
  ALTER TABLE SWEET RENAME COLUMN weight TO s_weight;

CREATE TABLE Bread (id INT );
ALTER TABLE Bread ADD COLUMN name VARCHAR(100);
ALTER TABLE Bread ADD COLUMN category VARCHAR(50);
ALTER TABLE Bread ADD COLUMN  description varchar(40);
ALTER TABLE Bread ADD COLUMN price int;
ALTER TABLE Bread ADD COLUMN calories INT;
ALTER TABLE Bread ADD COLUMN manufacturer VARCHAR(100);
ALTER TABLE Bread ADD COLUMN origin_country VARCHAR(50);
ALTER TABLE Bread ADD COLUMN production_date DATE;
ALTER TABLE Bread ADD COLUMN  expiry_date DATE;

ALTER TABLE Bread DROP COLUMN name;
ALTER TABLE Bread DROP COLUMN category;
ALTER TABLE Bread MODIFY  COLUMN   description int;
ALTER TABLE Bread MODIFY  COLUMN expiry_date INT;
ALTER TABLE Bread RENAME COLUMN price TO b_price;
ALTER TABLE Bread RENAME COLUMN manufacturer TO b_manufacturer ;
ALTER TABLE Bread RENAME COLUMN  origin_country TO  b_origin_country;
ALTER TABLE Bread RENAME COLUMN calories TO b_calories;
  
CREATE TABLE nail_paint (id INT );
ALTER TABLE nail_paint ADD COLUMN name VARCHAR(100);
ALTER TABLE nail_paint ADD COLUMN brand VARCHAR(50);
ALTER TABLE nail_paint ADD COLUMN color VARCHAR(50);
ALTER TABLE nail_paint ADD COLUMN type VARCHAR(50);
ALTER TABLE nail_paint ADD COLUMN volume_ml INT;
ALTER TABLE nail_paint ADD COLUMN price int;
ALTER TABLE nail_paint ADD COLUMN manufacturer VARCHAR(100);
ALTER TABLE nail_paint ADD COLUMN origin_country VARCHAR(50);
ALTER TABLE nail_paint ADD COLUMN manufacturing_date DATE;
ALTER TABLE nail_paint ADD COLUMN expiry_date DATE;
desc nail_paint;

ALTER TABLE nail_paint DROP COLUMN  name;
ALTER TABLE nail_paint DROP COLUMN brand ;
ALTER TABLE nail_paint MODIFY  COLUMN type int;
ALTER TABLE nail_paint MODIFY  COLUMN expiry_date INT;
ALTER TABLE nail_paint RENAME COLUMN price TO n_price;
ALTER TABLE nail_paint RENAME COLUMN manufacturer TO n_manufacturer ;
ALTER TABLE nail_paint RENAME COLUMN  origin_country TO  n_origin_country;
ALTER TABLE nail_paint RENAME COLUMN volume_ml TO volume;

CREATE TABLE tower (id INT );
ALTER TABLE tower ADD COLUMN name VARCHAR(100);
ALTER TABLE tower ADD COLUMN location VARCHAR(50);
ALTER TABLE tower ADD COLUMN height_meters int;
ALTER TABLE tower ADD COLUMN construction_date DATE;
ALTER TABLE tower ADD COLUMN owner VARCHAR(100);
ALTER TABLE tower ADD COLUMN city VARCHAR(100);
ALTER TABLE tower ADD COLUMN country VARCHAR(50);
ALTER TABLE tower ADD COLUMN origin_country VARCHAR(50);
ALTER TABLE tower ADD COLUMN latitude int;
ALTER TABLE tower ADD COLUMN  longitude int;

desc tower;

ALTER TABLE tower DROP COLUMN  name;
ALTER TABLE tower DROP COLUMN id ;
ALTER TABLE tower MODIFY  COLUMN location int;
ALTER TABLE tower MODIFY  COLUMN height_meters VARCHAR(50);
ALTER TABLE tower RENAME COLUMN country TO t_country;
ALTER TABLE tower RENAME COLUMN origin_country TO t_origin_country ;
ALTER TABLE tower RENAME COLUMN  latitude TO  t_latitude;
ALTER TABLE tower RENAME COLUMN longitude TO t_longitude;



   
  
  
  
  