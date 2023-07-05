use june7th;
SELECT * FROM streetlight;
UPDATE streetlight SET Location = 'Bangalore' WHERE LightId = 1;
UPDATE streetlight SET Latitude = 76.99887 WHERE location = 'dharwad';
UPDATE streetlight SET longitude = 72.98798 WHERE LightId = 4;
UPDATE streetlight SET PowerStatus = 266 WHERE wattage = 210;
UPDATE streetlight SET LightType = 'LED' WHERE LightId = 9;
delete from streetlight where Location = 'HASSAN';
delete from streetlight where LightIntensity = 220;
delete from streetlight where InstallationDate = '2012-06-30';
delete from streetlight where Longitude = 75.568000;
delete from streetlight where wattage = 240;


SELECT * FROM products;
UPDATE products SET productID =30 WHERE productName= 'product A';
UPDATE products SET Description = 'bad product' WHERE productID=2;
UPDATE products SET Price = 15.00 WHERE ProductId = 20;
UPDATE products SET Quantity = 101 WHERE SupplierID = 672;
UPDATE products SET Category = 'not bad' WHERE ProductId = 10;
delete from products where ProductID = 11;
delete from products where ProductName ='setting sprays';
delete from products where Quantity = 200;
delete from products where SupplierID = 104;
delete from products where Description = 'shade good';


SELECT * FROM traffic;
UPDATE traffic SET TrafficID =22 WHERE Location ='dharwad';
UPDATE traffic SET dateRecorded ='2023-07-04' WHERE location = 'hassan';
UPDATE traffic SET Location = 'J P Nagar' WHERE dateRecorded ='2003-07-23';
UPDATE traffic SET TrafficID =21 WHERE Averagespeed = 47;
UPDATE traffic SET trafficStatus = 'slow' WHERE location='Tumakuru';
delete from traffic where Location = 'kodagu';
delete from traffic where TrafficID = 13;
delete from traffic where VehicleCount = 85;
delete from traffic where TimeRecorded = '07:55:00';
delete from traffic where AverageSpeed = 44;


SELECT * FROM blog;
UPDATE blog SET PostID = 21 WHERE Title='getting started with sql';
UPDATE blog SET Author = 'john' WHERE Likes = 30;
UPDATE blog SET Tags = 'Sql' WHERE PostID =15;
UPDATE blog SET PublicationDate ='2023-07-04' WHERE PostID = 6;
UPDATE blog SET Likes =66 WHERE CommentsCount = 22;
delete from blog where Category = 'Technology';
delete from blog where LightIntensity = 220;
delete from blog where InstallationDate = '2012-06-30';
delete from blog where Longitude = 75.568000;
delete from blog where wattage = 240;


SELECT * FROM MedicalRecords;
UPDATE MedicalRecords SET RecordID = 21 WHERE PatientID = 105;
UPDATE MedicalRecords SET PatientID = 121 WHERE DoctorID = 213;
UPDATE MedicalRecords SET DoctorID = 301 WHERE AppointmentDate ='2023-07-04';
UPDATE MedicalRecords SET AppointmentDate ='2023-07-07'  WHERE Symptoms = 'Insomnia,Anxiety';
UPDATE MedicalRecords SET Symptoms = 'cold' WHERE RecordID = 17;
delete from MedicalRecords where Diagnosis = 'gastritis';
delete from MedicalRecords where medicationPrescribed ='Antihistamines, Nasal Sprays';
delete from MedicalRecords where LabTestResults = 'Positive';
delete from MedicalRecords where followUpDate = '2023-07-29';
delete from MedicalRecords where InsuranceCoverage = 0;


SELECT * FROM Events;
UPDATE Events SET EventID = 22 WHERE EventName = 'Music Festival';
UPDATE Events SET EventName = 'student dance' WHERE venue = 'Green Hall';
UPDATE Events SET venue = 'btm layout' WHERE date ='2023-10-05';
UPDATE Events SET date = '2023-07-30' WHERE time ='09:30:00'; 
UPDATE Events SET time = '09:35:00' WHERE EventID = 9;
delete from Events where ticketprice = 40.00;
delete from Events where EventID =12;
delete from Events where eventname = 'Startup Summit';
delete from Events where venue = 'Art Gallery';
delete from Events where time ='17:00:00';


SELECT * FROM Bookings;
UPDATE Bookings SET BookingID =35 WHERE GuestID = 105;
UPDATE Bookings SET GuestID = 125 WHERE RoomNumber =206;
UPDATE Bookings SET RoomNumber =301 WHERE CheckinDate ='2023-07-15';
UPDATE Bookings SET CheckinDate = '2022-07-15' WHERE CheckoutDate = '2023-07-27';
UPDATE Bookings SET CheckoutDate = '2023-08-16' WHERE BookingID = 9;
delete from Bookings where BookingID = 8;
delete from Bookings where GuestID = 107;
delete from Bookings where TotalCost = 320.00;
delete from Bookings where CheckinDate = '2023-08-22';
delete from Bookings where CheckoutDate='2023-08-26';

SELECT * FROM Phone;
UPDATE Phone SET id = 25 WHERE p_brand ='Samsung';
UPDATE Phone SET p_brand ='Redmi'WHERE p_model = 'LG';
UPDATE Phone SET p_model = 'MI 13' WHERE p_price = 499;
UPDATE Phone SET p_price = 258 WHERE release_date = '2021-03-04';
UPDATE Phone SET release_date = '2023-07-05' WHERE operating_system ='iOS';
delete from Phone where operating_system = 'iOS';
delete from Phone where id = 6;
delete from Phone where p_brand = 'OnePlus';
delete from Phone where p_model = 'Pixel 5';
delete from Phone where p_price = 249;


SELECT * FROM Sweets;
UPDATE Sweets SET id = 23 WHERE name ='Chocolate Bar';
UPDATE Sweets SET name = 'Lollipop' WHERE category = 'Gum';
UPDATE Sweets SET category='jelly' WHERE flavor = 'Butterscotch';
UPDATE Sweets SET flavor = 'Honey' WHERE calories = 200;
UPDATE Sweets SET calories = 300 WHERE id = 2;
delete from Sweets where sugar_content = 12.5;
delete from Sweets where price =1.49;
delete from Sweets where manufacturer = 'Candylicious';
delete from Sweets where id = 19;
delete from Sweets where name ='Fruit Cake';


SELECT * FROM BedSheet;
UPDATE BedSheet SET id = 24 WHERE brand = 'AmazonBasics';
UPDATE BedSheet SET brand ='max' WHERE material = 'Bamboo';
UPDATE BedSheet SET material ='silk'WHERE size ='Full';
UPDATE BedSheet SET size = 'normall' WHERE color = 'plaid';
UPDATE BedSheet SET color = 'black' WHERE id = 10;
delete from BedSheet where thread_count = 1200;
delete from BedSheet where price = 54.99;
delete from BedSheet where id = 17;
delete from BedSheet where brand ='Bedsure';
delete from BedSheet where id = 13;





