
CREATE TABLE Customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20),
    address TEXT
);


CREATE TABLE Films (
    film_id SERIAL PRIMARY KEY,
    film_title VARCHAR(100),
    release_year INTEGER,
    genre VARCHAR(50),
    director VARCHAR(100),
    duration_minutes INTEGER
);


CREATE TABLE Tickets (
    ticket_id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES Customers(customer_id),
    film_id INTEGER REFERENCES Films(film_id),
    ticket_price DECIMAL(10, 2),
    purchase_date DATE
);


CREATE TABLE Concessions (
    concession_id SERIAL PRIMARY KEY,
    ticket_id INTEGER REFERENCES Tickets(ticket_id),
    concession_item VARCHAR(100),
    concession_price DECIMAL(10, 2),
    purchase_date DATE
);




INSERT INTO Customers (first_name, last_name, email, phone_number, address)
VALUES 
    ('John', 'Doe', 'johndoe@gmail.com', '123-456-7890', '123 Main St, City'),
    ('Jane', 'Smith', 'janesmith@hotmail.com', '987-654-3210', '456 Broadway, Town'),
    ('Mike', 'Johnson', 'mikejohnson@gmail.com', '555-555-5555', '789 Elm St, Village');

INSERT INTO Films (film_title, release_year, genre, director, duration_minutes)
VALUES 
    ('The Adventures of Super Potato', 1999, 'Comedy', 'Mize Wazowski', 136),
    ('Attack of the Killer Donuts', 2010, 'Horror', 'Dr. Phil', 148),
    ('Ninjas vs. Pirates: Battle of the Ages', 1993, 'Action', 'Schmeven Schmielberg', 127);

INSERT INTO Tickets (customer_id, film_id, ticket_price, purchase_date)
VALUES 
    (1, 1, 10.99, '2024-04-15'),
    (1, 2, 12.99, '2024-04-16'),
    (2, 3, 8.99, '2024-04-17');


INSERT INTO Concessions (ticket_id, concession_item, concession_price, purchase_date)
VALUES 
    (1, 'Popcorn', 5.99, '2024-04-15'),
    (1, 'Soda', 3.99, '2024-04-15'),
    (2, 'Candy', 2.99, '2024-04-16');

