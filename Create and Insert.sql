-- Create Airports table
CREATE TABLE Airports 
(
    AirportCode VARCHAR(3) PRIMARY KEY,
    AirportName VARCHAR(100),
    City VARCHAR(100)
);

-- Insert sample data into Airports table
INSERT INTO Airports (AirportCode, AirportName, City) VALUES ('DEL', 'Indira Gandhi International Airport', 'New Delhi');
INSERT INTO Airports (AirportCode, AirportName, City) VALUES('BOM', 'Chhatrapati Shivaji Maharaj International Airport', 'Mumbai');
INSERT INTO Airports (AirportCode, AirportName, City) VALUES('MAA', 'Chennai International Airport', 'Chennai');
INSERT INTO Airports (AirportCode, AirportName, City) VALUES('BLR', 'Kempegowda International Airport', 'Bengaluru');

-- Create Airlines table
CREATE TABLE Airlines 
(
    AirlineCode VARCHAR(3) PRIMARY KEY,
    AirlineName VARCHAR(100),
    Country VARCHAR(100)
);

-- Insert sample data into Airlines table
INSERT INTO Airlines VALUES('AI', 'Air India', 'India');
INSERT INTO Airlines VALUES('6E', 'IndiGo', 'India');

-- Create Flights table
CREATE TABLE Flights 
(
    FlightNumber NUMBER(10) PRIMARY KEY,
    DepartureAirport VARCHAR(3),
    ArrivalAirport VARCHAR(3),
    DepartureTime DATE,
    ArrivalTime DATE,
    AvailableSeats NUMBER(10),
    AirlineCode VARCHAR(3),
    FOREIGN KEY (DepartureAirport) REFERENCES Airports(AirportCode),
    FOREIGN KEY (ArrivalAirport) REFERENCES Airports(AirportCode),
    FOREIGN KEY (AirlineCode) REFERENCES Airlines(AirlineCode)
);

-- Insert sample data into Flights table
INSERT INTO Flights VALUES(101, 'DEL', 'BOM', '2024-04-13 08:00:00', '2024-04-13 10:00:00', 100, 'AI');
INSERT INTO Flights VALUES(102, 'BOM', 'DEL', '2024-04-14 09:00:00', '2024-04-14 11:00:00', 120, '6E');

-- Create Passengers table
CREATE TABLE Passengers 
(
    PassengerID NUMBER(10) AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100)
);

-- Insert sample data into Passengers table
INSERT INTO PassengerS VALUES('Rahul Sharma', 'rahul@example.com');
INSERT INTO PassengerS VALUES('Priya Singh', 'priya@example.com');

-- Create Reservations table
CREATE TABLE Reservations 
(
    ReservationID NUMBER(10) AUTO_INCREMENT PRIMARY KEY,
    FlightNumber NUMBER(10),
    PassengerID NUMBER(10),
    SeatNumber VARCHAR(10),
    FOREIGN KEY (FlightNumber) REFERENCES Flights(FlightNumber),
    FOREIGN KEY (PassengerID) REFERENCES Passengers(PassengerID)
);

-- Create Aircrafts table
CREATE TABLE Aircrafts 
(
    AircraftCode VARCHAR(5) PRIMARY KEY,
    AircraftName VARCHAR(100),
    AirlineCode VARCHAR(3),
    FOREIGN KEY (AirlineCode) REFERENCES Airlines(AirlineCode)
);

-- Insert sample data into Aircrafts table
INSERT INTO Aircrafts VALUES('B737', 'Boeing 737', 'AI');
INSERT INTO Aircrafts VALUES('A320', 'Airbus A320', '6E');

-- Create Seats table
CREATE TABLE Seats 
(
    SeatID NUMBER(10) AUTO_INCREMENT PRIMARY KEY,
    AircraftCode VARCHAR(5),
    SeatNumber VARCHAR(10),
    FOREIGN KEY (AircraftCode) REFERENCES Aircrafts(AircraftCode)
);

-- Insert sample data into Seats table
INSERT INTO Seats (AircraftCode, SeatNumber)VALUES('B737', '1A');
INSERT INTO Seats (AircraftCode, SeatNumber)VALUES('B737', '1B');
INSERT INTO Seats (AircraftCode, SeatNumber)VALUES('A320', '2A');
INSERT INTO Seats (AircraftCode, SeatNumber)VALUES('A320', '2B');
