CREATE DATABASE TicketBookingSystem;

USE TicketBookingSystem;

CREATE TABLE Venu (
    venue_id INT(5) PRIMARY KEY,
    venue_name VARCHAR(50), 
    address VARCHAR(100) 
);

CREATE TABLE Event (
    event_id INT(5) PRIMARY KEY,
    event_name VARCHAR(50), 
    event_date DATE,
    event_time TIME,
    venue_id INT(5),
    total_seats INT(5),
    available_seats INT(3),
    ticket_price DECIMAL(10,2),
    event_type ENUM('Movie', 'Sports', 'Concert'),
    booking_id INT(5)
);

CREATE TABLE Customer (
    customer_id INT(5) PRIMARY KEY,
    customer_name VARCHAR(50), 
    email VARCHAR(100), 
    phone_number VARCHAR(20), 
    booking_id INT(5)
);

CREATE TABLE Booking (
    booking_id INT(5) PRIMARY KEY,
    customer_id INT,
    event_id INT(6),
    num_tickets INT(10),
    total_cost DECIMAL(20,2),
    booking_date DATE
);


ALTER TABLE Event
    ADD FOREIGN KEY (venue_id) REFERENCES Venu(venue_id),
    ADD FOREIGN KEY (booking_id) REFERENCES Booking(booking_id);

ALTER TABLE Customer
    ADD FOREIGN KEY (booking_id) REFERENCES Booking(booking_id);

ALTER TABLE Booking
    ADD FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    ADD FOREIGN KEY (event_id) REFERENCES Event(event_id);
