CREATE TABLE Buildings (
    BuildingID INT PRIMARY KEY,
    BuildingName VARCHAR(255),
    Location VARCHAR(255),
    ConstructionYear INT,
    NumFloors INT,
    Architect VARCHAR(255)
);
INSERT INTO Buildings (BuildingID, BuildingName, Location, ConstructionYear, NumFloors, Architect)
VALUES
    (1, 'Tower A', 'New York', 2010, 30, 'John Smith'),
    (2, 'Plaza Tower', 'London', 2005, 20, 'Sarah Johnson'),
    (3, 'Skyscraper B', 'Tokyo', 2018, 50, 'David Lee'),
    (4, 'City Center', 'Sydney', 2012, 35, 'Emily Wong'),
    (5, 'Renaissance', 'Paris', 2008, 15, 'Michael Brown'),
    (6, 'Central Park', 'Los Angeles', 2015, 25, 'Jennifer Chen'),
    (7, 'Grand Tower', 'Chicago', 2011, 40, 'Robert Davis'),
    (8, 'Harbour View', 'Hong Kong', 2009, 60, 'Karen Ng'),
    (9, 'Golden Gate', 'San Francisco', 2019, 45, 'Matthew Johnson'),
    (10, 'Mountain View', 'Vancouver', 2007, 18, 'Laura Thompson');
    SELECT * FROM Buildings;
ALTER TABLE Buildings ADD COLUMN Status VARCHAR(50);
UPDATE Buildings SET Location = 'Paris' WHERE BuildingID = 1;
DELETE FROM Buildings WHERE ConstructionYear = 2010;
SELECT * FROM Buildings WHERE Architect = 'Sarah Johnson';
SELECT * FROM Buildings WHERE Location = 'New York' AND NumFloors = 20
    OR Architect IN ('Sarah Johnson', 'David Lee')
    OR ConstructionYear NOT IN (2010, 2018)
    OR NumFloors BETWEEN 10 AND 30;
INSERT INTO Buildings (BuildingID, BuildingName, Location, ConstructionYear, NumFloors, Architect)
VALUES (4, 'City Center', 'Sydney', 2012, 35, 'Emily Wong');
SELECT SUBSTR(BuildingName, 1, 4) AS ShortName,
       LPAD(ConstructionYear, 4, '0') AS PaddedYear,
       RPAD(Location, 15, '-') AS PaddedLocation FROM Buildings;
SELECT COUNT(*) AS TotalBuildings,
       SUM(NumFloors) AS TotalFloors,
       MAX(ConstructionYear) AS LatestYear,
       MIN(ConstructionYear) AS EarliestYear,
       AVG(NumFloors) AS AverageFloors FROM Buildings;
SELECT * FROM Buildings WHERE BuildingName LIKE '%Tower%'
    AND UPPER(Location) = 'LONDON'
    AND LOWER(Architect) = 'john smith';
SELECT CONCAT(BuildingName, ' in ', Location) AS BuildingLocation FROM Buildings;
SELECT Architect, COUNT(*) AS BuildingCount
FROM Buildings
GROUP BY Architect
HAVING COUNT(*) =1;
SELECT BuildingName AS Name, NumFloors AS Floors FROM Buildings;



CREATE TABLE Pen (
    PenID INT PRIMARY KEY,
    Brand VARCHAR(255),
    Color VARCHAR(255),
    Material VARCHAR(255),
    Price DECIMAL(10, 2),
    Stock INT
);
INSERT INTO Pen (PenID, Brand, Color, Material, Price, Stock) VALUES
 (1, 'Parker', 'Blue', 'Metal', 15.99, 50),
 (2, 'Bic', 'Black', 'Plastic', 1.99, 100),
 (3, 'Cross', 'Red', 'Metal', 24.99, 30),
 (4, 'Pilot', 'Green', 'Plastic', 2.49, 80),
 (5, 'Montblanc', 'Black', 'Metal', 99.99, 20),
 (6, 'Staedtler', 'Blue', 'Plastic', 3.99, 60),
 (7, 'Papermate', 'Purple', 'Plastic', 0.99, 200),
 (8, 'Lamy', 'Silver', 'Metal', 19.99, 40),
 (9, 'Waterman', 'Black', 'Metal', 29.99, 35),
 (10, 'Uni-ball', 'Red', 'Plastic', 1.49, 150);
ALTER TABLE Pen ADD COLUMN Refillable BOOLEAN;
UPDATE Pen SET Material = 'Metallic' WHERE PenID = 1;
DELETE FROM Pen WHERE Price > 10.00;
SELECT * FROM Pen WHERE Brand = 'Parker';
SELECT * FROM Pen WHERE Color = 'Blue' AND Stock > 50
    OR Brand IN ('Parker', 'Bic')
    OR Material NOT IN ('Plastic')
    OR Price BETWEEN 5.00 AND 20.00;

-- INSERT to add a new row
INSERT INTO Pen (PenID, Brand, Color, Material, Price, Stock)
VALUES (11, 'Faber-Castell', 'Green', 'Plastic', 4.99, 90);
SELECT SUBSTR(Brand, 1, 3) AS ShortBrand,
       LPAD(Price, 6, '0') AS PaddedPrice,
       RPAD(Material, 10, '-') AS PaddedMaterial FROM Pen;
SELECT COUNT(*) AS TotalPens,
       SUM(Stock) AS TotalStock,
       MAX(Price) AS HighestPrice,
       MIN(Price) AS LowestPrice,
       AVG(Price) AS AveragePrice FROM Pen;
SELECT * FROM Pen WHERE Brand LIKE '%ball%'
AND UPPER(Color) = 'BLACK' AND LOWER(Material) = 'metal';
SELECT CONCAT(Brand, ' ', Color) AS BrandColor FROM Pen;
SELECT Material, COUNT(*) AS PenCount FROM Pen
GROUP BY Material HAVING COUNT(*) = 2;
SELECT Brand AS PenBrand, Stock AS PenStock FROM Pen;



CREATE TABLE Plant (
    PlantID INT PRIMARY KEY,
    PlantName VARCHAR(255),
    Species VARCHAR(255),
    Family VARCHAR(255),
    Price DECIMAL(10, 2),
    Quantity INT
);
INSERT INTO Plant (PlantID, PlantName, Species, Family, Price, Quantity)
VALUES
    (1, 'Rose', 'Rosa', 'Rosaceae', 9.99, 20),
    (2, 'Lily', 'Lilium', 'Liliaceae', 6.99, 15),
    (3, 'Orchid', 'Phalaenopsis', 'Orchidaceae', 12.99, 10),
    (4, 'Sunflower', 'Helianthus', 'Asteraceae', 4.99, 30),
    (5, 'Tulip', 'Tulipa', 'Liliaceae', 3.99, 25),
    (6, 'Carnation', 'Dianthus', 'Caryophyllaceae', 5.99, 18),
    (7, 'Daisy', 'Bellis', 'Asteraceae', 2.99, 40),
    (8, 'Fern', 'Pteridophyta', 'Polypodiopsida', 7.99, 12),
    (9, 'Cactus', 'Cactaceae', 'Caryophyllales', 8.99, 8),
    (10, 'Geranium', 'Pelargonium', 'Geraniaceae', 4.49, 22);

ALTER TABLE Plant ADD COLUMN BloomingPeriod VARCHAR(255);
UPDATE Plant SET Family = 'Rosaceae' WHERE PlantID = 1;
DELETE FROM Plant WHERE Price > 10.00;
SELECT * FROM Plant WHERE PlantName = 'Rose';
SELECT * FROM Plant WHERE Family = 'Liliaceae' AND Quantity > 20
    OR PlantName IN ('Rose', 'Lily')
    OR Species NOT IN ('Phalaenopsis')
    OR Price BETWEEN 5.00 AND 10.00;
INSERT INTO Plant (PlantID, PlantName, Species, Family, Price, Quantity)
VALUES (11, 'Daffodil', 'Narcissus', 'Amaryllidaceae', 3.49, 28);
SELECT SUBSTR(PlantName, 1, 4) AS ShortName,
       LPAD(Price, 6, '0') AS PaddedPrice,
       RPAD(Family, 15, '-') AS PaddedFamily FROM Plant;
SELECT COUNT(*) AS TotalPlants,
       SUM(Quantity) AS TotalQuantity,
       MAX(Price) AS HighestPrice,
       MIN(Price) AS LowestPrice,
       AVG(Price) AS AveragePrice FROM Plant;
SELECT * FROM Plant WHERE PlantName LIKE '%flower%'
    AND UPPER(Family) = 'ASTERACEAE'
    AND LOWER(Species) = 'rosa';
SELECT CONCAT(PlantName, ' - ', Family) AS PlantFamily FROM Plant;
SELECT Family, COUNT(*) AS PlantCount
FROM Plant
GROUP BY Family
HAVING COUNT(*) = 2;
SELECT PlantName AS Name, Quantity AS Stock FROM Plant;



CREATE TABLE Hotel (
    HotelID INT PRIMARY KEY,
    HotelName VARCHAR(255),
    Location VARCHAR(255),
    Rating DECIMAL(3, 1),
    PricePerNight DECIMAL(8, 2),
    AvailableRooms INT
);

INSERT INTO Hotel (HotelID, HotelName, Location, Rating, PricePerNight, AvailableRooms)
VALUES
    (1, 'Grand Hotel', 'New York', 4.5, 249.99, 50),
    (2, 'Beach Resort', 'Miami', 4.3, 189.99, 80),
    (3, 'Mountain Lodge', 'Aspen', 4.8, 349.99, 20),
    (4, 'City Inn', 'Chicago', 3.9, 129.99, 100),
    (5, 'Sunset View', 'Los Angeles', 4.2, 199.99, 60),
    (6, 'Island Paradise', 'Hawaii', 4.7, 299.99, 30),
    (7, 'Lake Retreat', 'Seattle', 4.4, 179.99, 70),
    (8, 'Historic Inn', 'Boston', 4.6, 219.99, 40),
    (9, 'Desert Oasis', 'Scottsdale', 4.1, 169.99, 90),
    (10, 'Coastal Hideaway', 'San Francisco', 4.9, 399.99, 10);

ALTER TABLE Hotel ADD COLUMN WiFi BOOLEAN;
UPDATE Hotel SET Location = 'Las Vegas' WHERE HotelID = 1;
DELETE FROM Hotel WHERE Rating < 4.0;
SELECT * FROM Hotel WHERE HotelName = 'Grand Hotel';
SELECT * FROM Hotel
WHERE Location = 'Miami' AND AvailableRooms > 50
    OR HotelName IN ('Grand Hotel', 'Beach Resort')
    OR Rating NOT IN (4.6, 4.8)
    OR PricePerNight BETWEEN 200.00 AND 300.00;
INSERT INTO Hotel (HotelID, HotelName, Location, Rating, PricePerNight, AvailableRooms)
VALUES (11, 'Country Lodge', 'Napa Valley', 4.3, 189.99, 40);
SELECT SUBSTR(HotelName, 1, 5) AS ShortName,
       LPAD(PricePerNight, 7, '0') AS PaddedPrice,
       RPAD(Location, 15, '-') AS PaddedLocation FROM Hotel;
SELECT COUNT(*) AS TotalHotels,
       SUM(AvailableRooms) AS TotalRooms,
       MAX(Rating) AS HighestRating,
       MIN(Rating) AS LowestRating,
       AVG(PricePerNight) AS AveragePrice FROM Hotel;
SELECT * FROM Hotel
WHERE HotelName LIKE '%Resort%'
    AND UPPER(Location) = 'MIAMI'
    AND LOWER(Location) = 'new york';
SELECT CONCAT(HotelName, ' in ', Location) AS HotelLocation FROM Hotel;
SELECT Location, COUNT(*) AS HotelCount
FROM Hotel
GROUP BY Location
HAVING COUNT(*) > 2;
SELECT HotelName AS Name, Rating AS Rating FROM Hotel;



CREATE TABLE Movie (
    MovieID INT PRIMARY KEY,
    Title VARCHAR(255),
    Genre VARCHAR(255),
    Director VARCHAR(255),
    ReleaseYear INT,
    Rating DECIMAL(3, 1)
);


INSERT INTO Movie (MovieID, Title, Genre, Director, ReleaseYear, Rating)
VALUES
    (1, 'The Shawshank Redemption', 'Drama', 'Frank Darabont', 1994, 9.3),
    (2, 'The Godfather', 'Crime', 'Francis Ford Coppola', 1972, 9.2),
    (3, 'Pulp Fiction', 'Crime', 'Quentin Tarantino', 1994, 8.9),
    (4, 'The Dark Knight', 'Action', 'Christopher Nolan', 2008, 9.0),
    (5, 'Fight Club', 'Drama', 'David Fincher', 1999, 8.8),
    (6, 'Forrest Gump', 'Drama', 'Robert Zemeckis', 1994, 8.8),
    (7, 'Inception', 'Action', 'Christopher Nolan', 2010, 8.7),
    (8, 'The Matrix', 'Action', 'Lana Wachowski', 1999, 8.7),
    (9, 'Goodfellas', 'Crime', 'Martin Scorsese', 1990, 8.7),
    (10, 'Interstellar', 'Sci-Fi', 'Christopher Nolan', 2014, 8.6);
ALTER TABLE Movie ADD COLUMN Duration INT;
UPDATE Movie SET Director = 'Steven Spielberg'
WHERE MovieID = 1;
DELETE FROM Movie WHERE ReleaseYear < 2000;
SELECT * FROM Movie
WHERE Title = 'The Shawshank Redemption';
SELECT * FROM Movie
WHERE Genre = 'Drama' AND Rating > 8.5
    OR Director IN ('Christopher Nolan', 'Quentin Tarantino')
    OR ReleaseYear NOT IN (1994)
    OR Rating BETWEEN 8.5 AND 9.0;
INSERT INTO Movie (MovieID, Title, Genre, Director, ReleaseYear, Rating)
VALUES (11, 'The Avengers', 'Action', 'Joss Whedon', 2012, 8.0);
SELECT SUBSTR(Title, 1, 10) AS ShortTitle,
       LPAD(ReleaseYear, 4, '0') AS PaddedYear,
       RPAD(Genre, 15, '-') AS PaddedGenre
FROM Movie;
SELECT COUNT(*) AS TotalMovies,
       SUM(ReleaseYear) AS TotalYears,
       MAX(Rating) AS HighestRating,
       MIN(Rating) AS LowestRating,
       AVG(Rating) AS AverageRating FROM Movie;
SELECT * FROM Movie
WHERE Title LIKE '%Club%'
    AND UPPER(Genre) = 'DRAMA'
    AND LOWER(Director) = 'frank darabont';
SELECT CONCAT(Title, ' directed by ', Director) AS MovieInfo FROM Movie;
SELECT Director, COUNT(*) AS MovieCount
FROM Movie
GROUP BY Director
HAVING COUNT(*) > 2;
SELECT Title AS MovieTitle, Rating AS MovieRating FROM Movie;



CREATE TABLE Resort (
    ResortID INT PRIMARY KEY,
    ResortName VARCHAR(255),
    Location VARCHAR(255),
    Rating DECIMAL(3, 1),
    PricePerNight DECIMAL(8, 2),
    AvailableRooms INT
);

INSERT INTO Resort (ResortID, ResortName, Location, Rating, PricePerNight, AvailableRooms)
VALUES
    (1, 'Beach Paradise Resort', 'Maldives', 4.8, 500.00, 50),
    (2, 'Mountain Retreat Resort', 'Switzerland', 4.6, 800.00, 20),
    (3, 'Tropical Oasis Resort', 'Thailand', 4.4, 350.00, 80),
    (4, 'Luxury Island Resort', 'Bora Bora', 4.9, 1200.00, 10),
    (5, 'Ski Chalet Resort', 'Canada', 4.7, 600.00, 40),
    (6, 'Jungle Adventure Resort', 'Costa Rica', 4.2, 300.00, 60),
    (7, 'Desert Mirage Resort', 'Dubai', 4.5, 700.00, 30),
    (8, 'Lake View Resort', 'Italy', 4.3, 400.00, 70),
    (9, 'Spa Retreat Resort', 'California', 4.6, 550.00, 25),
    (10, 'Historic Castle Resort', 'Scotland', 4.8, 900.00, 15);
ALTER TABLE Resort ADD COLUMN WiFiAvailable BOOLEAN;
UPDATE Resort SET Location = 'Maldives' WHERE ResortID = 1;
DELETE FROM Resort WHERE Rating < 4.5;
SELECT * FROM Resort
WHERE ResortName = 'Beach Paradise Resort';
SELECT * FROM Resort
WHERE Location = 'Switzerland' AND AvailableRooms > 30
    OR ResortName IN ('Mountain Retreat Resort', 'Tropical Oasis Resort')
    OR Rating NOT IN (4.6)
    OR PricePerNight BETWEEN 400.00 AND 800.00;
INSERT INTO Resort (ResortID, ResortName, Location, Rating, PricePerNight, AvailableRooms)
VALUES (11, 'Family Fun Resort', 'Florida', 4.4, 450.00, 50);
SELECT SUBSTR(ResortName, 1, 5) AS ShortName,
       LPAD(PricePerNight, 7, '0') AS PaddedPrice,
       RPAD(Location, 15, '-') AS PaddedLocation
FROM Resort;
SELECT COUNT(*) AS TotalResorts,
       SUM(AvailableRooms) AS TotalRooms,
       MAX(Rating) AS HighestRating,
       MIN(Rating) AS LowestRating,
       AVG(PricePerNight) AS AveragePrice
FROM Resort;
SELECT * FROM Resort
WHERE ResortName LIKE '%Retreat%'
    AND UPPER(Location) = 'THAILAND'
    AND LOWER(Location) = 'maldives';
SELECT CONCAT(ResortName, ' in ', Location) AS ResortLocation
FROM Resort;
SELECT Location, COUNT(*) AS ResortCount
FROM Resort
GROUP BY Location
HAVING COUNT(*) > 2;
SELECT ResortName AS Name, Rating AS Rating FROM Resort;



CREATE TABLE Theater (
    TheaterID INT PRIMARY KEY,
    TheaterName VARCHAR(255),
    Location VARCHAR(255),
    Capacity INT,
    ScreenSize DECIMAL(4, 2),
    TicketPrice DECIMAL(8, 2)
);

INSERT INTO Theater (TheaterID, TheaterName, Location, Capacity, ScreenSize, TicketPrice)
VALUES
    (1, 'Cineplex City', 'New York', 300, 40.0, 12.99),
    (2, 'Metroplex', 'London', 250, 35.0, 10.99),
    (3, 'Cinema Paradiso', 'Paris', 200, 30.0, 11.99),
    (4, 'Star Cinemas', 'Los Angeles', 350, 45.0, 13.99),
    (5, 'MegaPlex', 'Sydney', 400, 50.0, 14.99),
    (6, 'Cinema Oasis', 'Tokyo', 150, 25.0, 9.99),
    (7, 'CineWorld', 'Toronto', 300, 40.0, 12.99),
    (8, 'Film Center', 'Berlin', 200, 30.0, 11.99),
    (9, 'Prestige Cinemas', 'Mumbai', 250, 35.0, 10.99),
    (10, 'Starlight Theaters', 'Chicago', 350, 45.0, 13.99);
ALTER TABLE Theater ADD COLUMN Has3D BOOLEAN;
UPDATE Theater SET Location = 'San Francisco' WHERE TheaterID = 1;
DELETE FROM Theater WHERE ScreenSize < 35.0;
SELECT * FROM Theater
WHERE TheaterName = 'Cineplex City';
SELECT * FROM Theater
WHERE Location = 'London' AND Capacity > 200
    OR TheaterName IN ('Metroplex', 'Cinema Paradiso')
    OR TicketPrice NOT IN (12.99)
    OR ScreenSize BETWEEN 30.0 AND 40.0;
INSERT INTO Theater (TheaterID, TheaterName, Location, Capacity, ScreenSize, TicketPrice)
VALUES (11, 'Silver Screens', 'Dubai', 300, 40.0, 12.99);
SELECT SUBSTR(TheaterName, 1, 6) AS ShortName,
       LPAD(TicketPrice, 7, '0') AS PaddedPrice,
       RPAD(Location, 15, '-') AS PaddedLocation
FROM Theater;
SELECT COUNT(*) AS TotalTheaters,
       SUM(Capacity) AS TotalCapacity,
       MAX(ScreenSize) AS HighestScreenSize,
       MIN(ScreenSize) AS LowestScreenSize,
       AVG(TicketPrice) AS AveragePrice
FROM Theater;
SELECT * FROM Theater
WHERE TheaterName LIKE '%Cinema%'
    AND UPPER(Location) = 'LONDON'
    AND LOWER(Location) = 'new york';
SELECT CONCAT(TheaterName, ' in ', Location) AS TheaterLocation
FROM Theater;
SELECT Location, COUNT(*) AS TheaterCount
FROM Theater
GROUP BY Location
HAVING COUNT(*) > 2;
SELECT TheaterName AS Name, Capacity AS Capacity FROM Theater;



CREATE TABLE SimCard (
    SimCardID INT PRIMARY KEY,
    PhoneNumber VARCHAR(255),
    Provider VARCHAR(255),
    PlanType VARCHAR(255),
    DataAllowance DECIMAL(8, 2),
    ExpiryDate DATE
);

INSERT INTO SimCard (SimCardID, PhoneNumber, Provider, PlanType, DataAllowance, ExpiryDate)
VALUES
    (1, '1234567890', 'AT&T', 'Prepaid', 5.0, '2023-12-31'),
    (2, '9876543210', 'Verizon', 'Postpaid', 10.0, '2023-11-30'),
    (3, '5555555555', 'T-Mobile', 'Prepaid', 3.0, '2023-10-31'),
    (4, '9999999999', 'Sprint', 'Postpaid', 8.0, '2023-09-30'),
    (5, '1111111111', 'Vodafone', 'Prepaid', 2.0, '2023-08-31'),
    (6, '2222222222', 'Airtel', 'Postpaid', 12.0, '2023-07-31'),
    (7, '4444444444', 'EE', 'Prepaid', 4.0, '2023-06-30'),
    (8, '8888888888', 'O2', 'Postpaid', 6.0, '2023-05-31'),
    (9, '7777777777', 'Three', 'Prepaid', 1.0, '2023-04-30'),
    (10, '6666666666', 'Orange', 'Postpaid', 7.0, '2023-03-31');
ALTER TABLE SimCard
ADD COLUMN IsActive BOOLEAN;
UPDATE SimCard SET Provider = 'AT&T Mobility' WHERE SimCardID = 1;
DELETE FROM SimCard WHERE DataAllowance < 5.0;
SELECT * FROM SimCard WHERE PhoneNumber = '1234567890';
SELECT * FROM SimCard
WHERE Provider = 'Verizon' AND DataAllowance > 8.0
    OR PlanType IN ('Prepaid', 'Postpaid')
    OR ExpiryDate NOT IN ('2023-11-30')
    OR DataAllowance BETWEEN 3.0 AND 7.0;
INSERT INTO SimCard (SimCardID, PhoneNumber, Provider, PlanType, DataAllowance, ExpiryDate)
VALUES (11, '3333333333', 'Telenor', 'Prepaid', 6.0, '2023-02-28');
SELECT SUBSTR(PhoneNumber, 1, 5) AS ShortNumber,
       LPAD(DataAllowance, 6, '0') AS PaddedAllowance,
       RPAD(Provider, 15, '-') AS PaddedProvider
FROM SimCard;
SELECT COUNT(*) AS TotalSimCards,
       SUM(DataAllowance) AS TotalDataAllowance,
       MAX(DataAllowance) AS HighestAllowance,
       MIN(DataAllowance) AS LowestAllowance,
       AVG(DataAllowance) AS AverageAllowance
FROM SimCard;
SELECT * FROM SimCard
WHERE Provider LIKE '%Mobile%'
    AND UPPER(PlanType) = 'PREPAID'
    AND LOWER(Provider) = 'att';
SELECT CONCAT(PhoneNumber, ' - ', Provider) AS PhoneNumberProvider
FROM SimCard;
SELECT Provider, COUNT(*) AS SimCardCount
FROM SimCard
GROUP BY Provider
HAVING COUNT(*) > 2;
SELECT PhoneNumber AS Number, DataAllowance AS Allowance FROM SimCard;



CREATE TABLE Printer (
    PrinterID INT PRIMARY KEY,
    Brand VARCHAR(255),
    Model VARCHAR(255),
    Color VARCHAR(255),
    Price DECIMAL(10, 2),
    Stock INT
);
INSERT INTO Printer (PrinterID, Brand, Model, Color, Price, Stock)
VALUES
    (1, 'HP', 'LaserJet Pro', 'Black', 199.99, 50),
    (2, 'Canon', 'PIXMA', 'Color', 89.99, 100),
    (3, 'Epson', 'WorkForce', 'Black', 149.99, 30),
    (4, 'Brother', 'HL-L2380DW', 'Black', 129.99, 80),
    (5, 'Xerox', 'VersaLink', 'Color', 299.99, 20),
    (6, 'Samsung', 'SL-M2020W', 'Black', 79.99, 60),
    (7, 'Lexmark', 'MB2236adw', 'Black', 199.99, 200),
    (8, 'Dell', 'E310dw', 'Black', 89.99, 40),
    (9, 'Ricoh', 'SP C261SFNw', 'Color', 249.99, 35),
    (10, 'Kyocera', 'ECOSYS P5021cdw', 'Color', 179.99, 150);
ALTER TABLE Printer ADD COLUMN Wireless BOOLEAN;
UPDATE Printer SET Color = 'White' WHERE PrinterID = 1;
DELETE FROM Printer WHERE Price > 200.00;
SELECT * FROM Printer WHERE Brand = 'HP';
SELECT * FROM Printer
WHERE Color = 'Black' AND Stock > 50
    OR Brand IN ('HP', 'Canon')
    OR Model NOT IN ('PIXMA')
    OR Price BETWEEN 100.00 AND 200.00;
INSERT INTO Printer (PrinterID, Brand, Model, Color, Price, Stock)
VALUES (11, 'Epson', 'Expression Home', 'Color', 119.99, 90);
SELECT SUBSTR(Brand, 1, 2) AS ShortBrand,
       LPAD(Price, 7, '0') AS PaddedPrice,
       RPAD(Color, 10, '-') AS PaddedColor
FROM Printer;

-- SELECT with COUNT, SUM, MAX, MIN, AVG
SELECT COUNT(*) AS TotalPrinters,
       SUM(Stock) AS TotalStock,
       MAX(Price) AS HighestPrice,
       MIN(Price) AS LowestPrice,
       AVG(Price) AS AveragePrice
FROM Printer;
SELECT * FROM Printer
WHERE Brand LIKE '%on'
    AND UPPER(Color) = 'COLOR'
    AND LOWER(Model) = 'workforce';
SELECT CONCAT(Brand, ' ', Model) AS BrandModel FROM Printer;
SELECT Color, COUNT(*) AS PrinterCount
FROM Printer
GROUP BY Color
HAVING COUNT(*) > 2;
SELECT Brand AS PrinterBrand, Stock AS PrinterStock FROM Printer;



    
    