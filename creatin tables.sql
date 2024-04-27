drop table if exists users;
drop table if exists profiles;
drop table if exists orders;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE profiles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    date_of_birth DATE,
    city VARCHAR(255),
    phone VARCHAR(255),
    money INT NOT NULL
);

CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    total_price DECIMAL(10,2) NOT NULL,
    order_date DATETIME NOT NULL,
    status VARCHAR(255) NOT NULL
);


-- Вставка даних для users
INSERT INTO users (name, email, password) VALUES
('John Doe', 'john@example.com', 'password123'),
('Jane Smith', 'jane@example.com', 'qwerty456'),
('Michael Johnson', 'michael@example.com', 'pass123'),
('Emily Davis', 'emily@example.com', 'securepwd'),
('Christopher Brown', 'chris@example.com', 'password123'),
('Amanda Wilson', 'amanda@example.com', 'amanda456'),
('Matthew Taylor', 'matthew@example.com', 'pass123'),
('Jessica Martinez', 'jessica@example.com', 'securepwd'),
('David Anderson', 'david@example.com', 'password123'),
('Sarah Thomas', 'sarah@example.com', 'sarah789'),
('Daniel Jackson', 'daniel@example.com', 'pass123'),
('Olivia White', 'olivia@example.com', 'securepwd'),
('James Harris', 'james@example.com', 'password123'),
('Emma Clark', 'emma@example.com', 'emma456'),
('Andrew Lewis', 'andrew@example.com', 'pass123'),
('Sophia Lee', 'sophia@example.com', 'securepwd'),
('William Walker', 'william@example.com', 'password123'),
('Madison Hall', 'madison@example.com', 'madison789'),
('Joshua Green', 'joshua@example.com', 'pass123'),
('Ashley King', 'ashley@example.com', 'securepwd');

-- Вставка даних для profiles
INSERT INTO profiles (user_id, date_of_birth, city, phone, money) VALUES
(1, '1990-05-15', 'New York', '123-456-7890', 1000),
(2, '1988-08-20', 'Los Angeles', '987-654-3210', 1500),
(3, '1995-03-10', 'Chicago', '111-222-3333', 2000),
(4, '1985-11-25', 'Houston', '555-444-3333', 1200),
(5, '1992-07-03', 'Phoenix', '999-888-7777', 1800),
(6, '1989-02-18', 'Philadelphia', '666-777-8888', 900),
(7, '1993-09-05', 'San Antonio', '333-222-1111', 1400),
(8, '1987-04-30', 'San Diego', '777-888-9999', 1600),
(9, '1991-01-12', 'Dallas', '222-333-4444', 1100),
(10, '1986-06-22', 'San Jose', '888-999-0000', 1300),
(11, '1994-12-07', 'Austin', '444-555-6666', 1700),
(12, '1990-10-15', 'Jacksonville', '555-666-7777', 1900),
(13, '1988-05-20', 'Fort Worth', '222-111-4444', 1400),
(14, '1997-08-03', 'Columbus', '666-999-3333', 1200),
(15, '1984-03-18', 'Charlotte', '777-444-5555', 1500);

-- Вставка даних для orders
INSERT INTO orders (user_id, total_price, order_date, status) VALUES
(1, 50.25, '2024-04-25 10:30:00', 'pending'),
(1, 75.50, '2024-04-26 11:45:00', 'shipped'),
(2, 100.75, '2024-04-26 09:15:00', 'delivered'),
(3, 45.20, '2024-04-25 14:20:00', 'pending'),
(4, 80.00, '2024-04-24 16:55:00', 'shipped'),
(5, 120.30, '2024-04-24 13:40:00', 'delivered'),
(6, 55.60, '2024-04-25 12:10:00', 'pending'),
(7, 90.75, '2024-04-26 08:30:00', 'shipped'),
(8, 70.40, '2024-04-25 15:25:00', 'delivered'),
(9, 35.80, '2024-04-24 10:00:00', 'pending');
