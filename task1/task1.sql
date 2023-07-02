CREATE DATABASE june7th;
USE june7th;
CREATE TABLE Customer(
Customer_ID INT,FirstName VARCHAR(50),
LastName VARCHAR(50),Email VARCHAR(20),
Phone_Number BIGINT,Address VARCHAR(40),
City VARCHAR(10),State VARCHAR(10),
Country VARCHAR(10),Registration_Date DATE);

CREATE TABLE StreetLight (
   LightID INT PRIMARY KEY,
   Location VARCHAR(100),
   Latitude DECIMAL(9,6),
   Longitude DECIMAL(9,6),
   InstallationDate DATE,
   LightType VARCHAR(50),
   LightIntensity INT,
   PowerStatus VARCHAR(20),
   MaintenanceDate DATE);
   
CREATE TABLE Products (
   ProductID INT PRIMARY KEY,
   ProductName VARCHAR(100),
   Price DECIMAL(10, 2),
   Quantity INT,
   SupplierID INT,
   Category VARCHAR(50),
   DateAdded DATE,
   LastUpdated DATE,
   DiscountAvailable BOOLEAN);
   
CREATE TABLE Orders (
   OrderID INT PRIMARY KEY,
   CustomerID INT,
   ProductID INT,
   OrderDate DATE,
   Quantity INT,
   TotalPrice DECIMAL(10, 2),
   ShippingAddress VARCHAR(100),
   PaymentMethod VARCHAR(50),
   OrderStatus VARCHAR(50),
   DeliveryDate DATE);
   
CREATE TABLE Sales (
   SalesID INT PRIMARY KEY,
   ProductID INT,
   CustomerID INT,
   SalesDate DATE,
   QuantitySold INT,
   TotalRevenue DECIMAL(10, 2),
   DiscountApplied DECIMAL(10, 2),
   SalesRegion VARCHAR(50),
   SalesRepID INT,
   PaymentStatus VARCHAR(50));

CREATE TABLE Suppliers (
   SupplierID INT PRIMARY KEY,
   SupplierName VARCHAR(100),
   ContactPerson VARCHAR(100),
   Email VARCHAR(100),
   Phone VARCHAR(20),
   Address VARCHAR(100),
   City VARCHAR(50),
   State VARCHAR(50),
   Country VARCHAR(50),
   AccountBalance DECIMAL(10, 2));

CREATE TABLE MedicalRecords (
   RecordID INT PRIMARY KEY,
   PatientID INT,
   DoctorID INT,
   AppointmentDate DATE,
   Symptoms TEXT,
   Diagnosis TEXT,
   MedicationPrescribed TEXT,
   LabTestResults TEXT,
   FollowUpDate DATE,
   InsuranceCoverage BOOLEAN);
   
CREATE TABLE Bookings (
   BookingID INT PRIMARY KEY,
   GuestID INT,
   RoomNumber INT,
   CheckinDate DATE,
   CheckoutDate DATE,
   NumberOfAdults INT,
   NumberOfChildren INT,
   ReservationStatus VARCHAR(50),
   TotalCost DECIMAL(10, 2),
   PaymentMethod VARCHAR(50));

CREATE TABLE Blog (
   PostID INT PRIMARY KEY,
   Title VARCHAR(100),
   Author VARCHAR(100),
   Content TEXT,
   Category VARCHAR(50),
   Tags VARCHAR(200),
   PublicationDate DATE,
   LastUpdated DATE,
   Likes INT,
   CommentsCount INT);

CREATE TABLE Events (
   EventID INT PRIMARY KEY,
   EventName VARCHAR(100),
   Venue VARCHAR(100),
   Date DATE,
   Time TIME,
   Description TEXT,
   Organizer VARCHAR(100),
   ContactDetails VARCHAR(100),
   TicketPrice DECIMAL(10, 2),
   AvailableSeats INT);

CREATE TABLE Traffic (
   TrafficID INT PRIMARY KEY,
   Location VARCHAR(100),
   DateRecorded DATE,
   TimeRecorded TIME,
   VehicleCount INT,
   AverageSpeed INT,
   RoadCondition VARCHAR(50),
   WeatherCondition VARCHAR(50),
   TrafficStatus VARCHAR(50));
