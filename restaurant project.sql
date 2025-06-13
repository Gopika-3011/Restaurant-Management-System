CREATE DATABASE restaurant
use restaurant
CREATE TABLE MenuItems (
    MenuItemID INT PRIMARY KEY,
    Name VARCHAR(100),
    Description TEXT,
    Price DECIMAL(10, 2),
    Category VARCHAR(50),
    Availability BOOLEAN
);
drop table MenuItems

CREATE TABLE Tables (
    TableID INT PRIMARY KEY,
    Capacity INT,
    IsOccupied BOOLEAN,
    Location VARCHAR(50)
); 
drop table Tables

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100),
    RegisteredDate DATE
);
drop table Customers

CREATE TABLE Reservations (
    ReservationID INT PRIMARY KEY,
    CustomerID INT,
    TableID INT,
    ReservationTime DATETIME,
    Status VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (TableID) REFERENCES Tables(TableID)
);
drop table Reservations;

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    TableID INT,
    OrderTime DATETIME,
    TotalAmount DECIMAL(10, 2),
    Status VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (TableID) REFERENCES Tables(TableID)
);
drop table Orders

CREATE TABLE OrderItems (
    OrderItemID INT PRIMARY KEY,
    OrderID INT,
    MenuItemID INT,
    Quantity INT,
    Price DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (MenuItemID) REFERENCES MenuItems(MenuItemID)
);
drop table OrderItems

CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY,
    OrderID INT,
    PaymentDate DATETIME,
    Amount DECIMAL(10, 2),
    Method VARCHAR(50),
    Status VARCHAR(50),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
drop table Payments

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    Role VARCHAR(50),
    PhoneNumber VARCHAR(15),
    HireDate DATE
);
drop table Employees

INSERT INTO MenuItems (MenuItemID, Name, Description, Price, Category, Availability) VALUES
(1, 'Item 1', 'Description for Item 1', 5.32, 'Dessert', TRUE),
(2, 'Item 2', 'Description for Item 2', 7.41, 'Appetizer', FALSE),
(3, 'Item 3', 'Description for Item 3', 17.29, 'Dessert', FALSE),
(4, 'Item 4', 'Description for Item 4', 10.58, 'Beverage', TRUE),
(5, 'Item 5', 'Description for Item 5', 16.67, 'Main Course', FALSE),
(6, 'Item 6', 'Description for Item 6', 6.24, 'Appetizer', FALSE),
(7, 'Item 7', 'Description for Item 7', 3.65, 'Appetizer', FALSE),
(8, 'Item 8', 'Description for Item 8', 23.13, 'Main Course', TRUE),
(9, 'Item 9', 'Description for Item 9', 8.73, 'Main Course', TRUE),
(10, 'Item 10', 'Description for Item 10', 11.12, 'Dessert', TRUE),
(11, 'Item 11', 'Description for Item 11', 14.25, 'Appetizer', TRUE),
(12, 'Item 12', 'Description for Item 12', 19.99, 'Main Course', FALSE),
(13, 'Item 13', 'Description for Item 13', 5.50, 'Dessert', TRUE),
(14, 'Item 14', 'Description for Item 14', 4.75, 'Beverage', TRUE),
(15, 'Item 15', 'Description for Item 15', 21.60, 'Main Course', FALSE);

INSERT INTO Tables (TableID, Capacity, IsOccupied, Location) VALUES
(1, 6, FALSE, 'Indoor'),
(2, 2, FALSE, 'Indoor'),
(3, 4, FALSE, 'Balcony'),
(4, 2, FALSE, 'Indoor'),
(5, 2, TRUE, 'Indoor'),
(6, 6, TRUE, 'Outdoor'),
(7, 4, TRUE, 'Indoor'),
(8, 2, FALSE, 'Indoor'),
(9, 4, TRUE, 'Balcony'),
(10, 2, FALSE, 'Outdoor'),
(11, 4, TRUE, 'Indoor'),
(12, 2, FALSE, 'Balcony'),
(13, 6, FALSE, 'Outdoor'),
(14, 2, TRUE, 'Indoor'),
(15, 8, FALSE, 'Balcony');

INSERT INTO Customers (CustomerID, Name, PhoneNumber, Email, RegisteredDate) VALUES
(1, 'Customer 1', '555-1001', 'customer1@example.com', '2024-01-02'),
(2, 'Customer 2', '555-1002', 'customer2@example.com', '2024-01-03'),
(3, 'Customer 3', '555-1003', 'customer3@example.com', '2024-01-04'),
(4, 'Customer 4', '555-1004', 'customer4@example.com', '2024-01-05'),
(5, 'Customer 5', '555-1005', 'customer5@example.com', '2024-01-06'),
(6, 'Customer 6', '555-1006', 'customer6@example.com', '2024-01-07'),
(7, 'Customer 7', '555-1007', 'customer7@example.com', '2024-01-08'),
(8, 'Customer 8', '555-1008', 'customer8@example.com', '2024-01-09'),
(9, 'Customer 9', '555-1009', 'customer9@example.com', '2024-01-10'),
(10, 'Customer 10', '555-1010', 'customer10@example.com', '2024-01-11'),
(11, 'Customer 11', '555-1011', 'customer11@example.com', '2024-01-12'),
(12, 'Customer 12', '555-1012', 'customer12@example.com', '2024-01-13'),
(13, 'Customer 13', '555-1013', 'customer13@example.com', '2024-01-14'),
(14, 'Customer 14', '555-1014', 'customer14@example.com', '2024-01-15'),
(15, 'Customer 15', '555-1015', 'customer15@example.com', '2024-01-16');

INSERT INTO Reservations (ReservationID, CustomerID, TableID, ReservationTime, Status) VALUES
(1, 1, 1, '2025-06-02 00:00:00', 'Completed'),
(2, 2, 4, '2025-06-03 00:00:00', 'Cancelled'),
(3, 3, 10, '2025-06-04 00:00:00', 'Cancelled'),
(4, 4, 7, '2025-06-05 00:00:00', 'Booked'),
(5, 5, 2, '2025-06-06 00:00:00', 'Booked'),
(6, 6, 3, '2025-06-07 00:00:00', 'Booked'),
(7, 7, 6, '2025-06-08 00:00:00', 'Booked'),
(8, 8, 2, '2025-06-09 00:00:00', 'Completed'),
(9, 9, 6, '2025-06-10 00:00:00', 'Booked'),
(10, 10, 10, '2025-06-11 00:00:00', 'Booked'),
(11, 11, 11, '2025-06-12 19:00:00', 'Booked'),
(12, 12, 12, '2025-06-13 20:30:00', 'Completed'),
(13, 13, 13, '2025-06-14 18:00:00', 'Cancelled'),
(14, 14, 14, '2025-06-15 21:00:00', 'Booked'),
(15, 15, 15, '2025-06-16 17:30:00', 'Booked');

INSERT INTO Orders (OrderID, CustomerID, TableID, OrderTime, TotalAmount, Status) VALUES
(101, 1, 6, '2025-06-01 18:15:00', 10.24, 'In-Progress'),
(102, 2, 6, '2025-06-01 18:30:00', 11.43, 'Completed'),
(103, 3, 7, '2025-06-01 18:45:00', 23.16, 'In-Progress'),
(104, 4, 7, '2025-06-01 19:00:00', 8.13, 'Completed'),
(105, 5, 3, '2025-06-01 19:15:00', 22.38, 'In-Progress'),
(106, 6, 9, '2025-06-01 19:30:00', 26.94, 'Completed'),
(107, 7, 7, '2025-06-01 19:45:00', 18.94, 'In-Progress'),
(108, 8, 6, '2025-06-01 20:00:00', 47.64, 'In-Progress'),
(109, 9, 8, '2025-06-01 20:15:00', 11.53, 'Cancelled'),
(110, 10, 2, '2025-06-01 20:30:00', 40.11, 'Completed'),
(111, 11, 4, '2025-06-01 20:45:00', 16.75, 'Completed'),
(112, 12, 5, '2025-06-01 21:00:00', 27.30, 'In-Progress'),
(113, 13, 6, '2025-06-01 21:15:00', 19.80, 'Cancelled'),
(114, 14, 7, '2025-06-01 21:30:00', 33.90, 'Completed'),
(115, 15, 8, '2025-06-01 21:45:00', 12.60, 'In-Progress');

INSERT INTO OrderItems (OrderItemID, OrderID, MenuItemID, Quantity, Price) VALUES
(1, 101, 1, 2, 18.46),
(2, 102, 2, 3, 9.67),
(3, 103, 3, 1, 5.03),
(4, 104, 4, 2, 4.15),
(5, 105, 5, 2, 5.57),
(6, 106, 6, 3, 6.81),
(7, 107, 7, 2, 4.94),
(8, 108, 8, 2, 2.34),
(9, 109, 9, 1, 9.37),
(10, 110, 10, 1, 9.01),
(11, 111, 3, 2, 10.06),
(12, 112, 5, 1, 16.67),
(13, 113, 6, 3, 18.72),
(14, 114, 8, 1, 23.13),
(15, 115, 10, 2, 22.24);

INSERT INTO Payments (PaymentID, OrderID, PaymentDate, Amount, Method, Status) VALUES
(201, 101, '2025-06-01 18:20:00', 10.24, 'Cash', 'Pending'),
(202, 102, '2025-06-01 18:40:00', 11.43, 'Card', 'Paid'),
(203, 103, '2025-06-01 19:00:00', 23.16, 'Cash', 'Pending'),
(204, 104, '2025-06-01 19:20:00', 8.13, 'Cash', 'Pending'),
(205, 105, '2025-06-01 19:40:00', 22.38, 'Card', 'Paid'),
(206, 106, '2025-06-01 20:00:00', 26.94, 'Cash', 'Paid'),
(207, 107, '2025-06-01 20:20:00', 18.94, 'Card', 'Paid'),
(208, 108, '2025-06-01 20:40:00', 47.64, 'UPI', 'Pending'),
(209, 109, '2025-06-01 21:00:00', 11.53, 'UPI', 'Pending'),
(210, 110, '2025-06-01 21:20:00', 40.11, 'Cash', 'Pending'),
(211, 111, '2025-06-01 21:40:00', 16.75, 'UPI', 'Paid'),
(212, 112, '2025-06-01 22:00:00', 27.30, 'Card', 'Pending'),
(213, 113, '2025-06-01 22:15:00', 19.80, 'Cash', 'Cancelled'),
(214, 114, '2025-06-01 22:30:00', 33.90, 'Card', 'Paid'),
(215, 115, '2025-06-01 22:45:00', 12.60, 'UPI', 'Pending');


INSERT INTO Employees (EmployeeID, Name, Role, PhoneNumber, HireDate) VALUES
(1, 'Employee 1', 'Chef', '555-2001', '2023-01-11'),
(2, 'Employee 2', 'Manager', '555-2002', '2023-01-21'),
(3, 'Employee 3', 'Waiter', '555-2003', '2023-01-31'),
(4, 'Employee 4', 'Cleaner', '555-2004', '2023-02-10'),
(5, 'Employee 5', 'Manager', '555-2005', '2023-02-20'),
(6, 'Employee 6', 'Cleaner', '555-2006', '2023-03-02'),
(7, 'Employee 7', 'Manager', '555-2007', '2023-03-12'),
(8, 'Employee 8', 'Chef', '555-2008', '2023-03-22'),
(9, 'Employee 9', 'Cleaner', '555-2009', '2023-04-01'),
(10, 'Employee 10', 'Cleaner', '555-2010', '2023-04-11'),
(11, 'Employee 11', 'Waiter', '555-2011', '2023-04-21'),
(12, 'Employee 12', 'Chef', '555-2012', '2023-05-01'),
(13, 'Employee 13', 'Manager', '555-2013', '2023-05-11'),
(14, 'Employee 14', 'Waiter', '555-2014', '2023-05-21'),
(15, 'Employee 15', 'Cleaner', '555-2015', '2023-06-01');


DELIMITER $$
CREATE PROCEDURE GetReservationsByDate(IN res_date DATE)
BEGIN
    SELECT r.ReservationID, c.Name AS CustomerName, r.ReservationTime, t.TableId, r.Status
    FROM Reservations r
    JOIN Customers c ON r.CustomerID = c.CustomerID
    JOIN Tables t ON r.TableID = t.TableID
    WHERE DATE(r.ReservationTime) = res_date;
END$$
DELIMITER ;
drop procedure GetReservationsByDate

DELIMITER $$
CREATE PROCEDURE GetOrdersByTable(IN table_number INT)
BEGIN
    SELECT o.OrderID, c.Name AS CustomerName, o.OrderTime, o.TotalAmount, o.Status
    FROM Orders o
    JOIN Customers c ON o.CustomerID = c.CustomerID
    JOIN Tables t ON o.TableID = t.TableID
    WHERE t.TableId = table_number;
END$$
DELIMITER ;
drop procedure GetOrdersByTable

DELIMITER $$
CREATE PROCEDURE GetCompletedOrdersWithPayment()
BEGIN
    SELECT o.OrderID, o.TotalAmount, o.Status, p.PaymentDate, p.Method, p.Amount
    FROM Orders o
    JOIN Payments p ON o.OrderID = p.OrderID
    WHERE o.Status = 'Completed' AND p.Status = 'Paid';
END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE GetCancelledReservations()
BEGIN
    SELECT r.ReservationID, c.Name AS CustomerName, r.ReservationTime, r.Status
    FROM Reservations r
    JOIN Customers c ON r.CustomerID = c.CustomerID
    WHERE r.Status = 'Cancelled';
END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE GetUnavailableMenuItems()
BEGIN
    SELECT MenuItemID, Name, Category, Price
    FROM MenuItems
    WHERE Availability = FALSE;
END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE GetTableOrderSummary(IN table_id INT)
BEGIN
    SELECT o.OrderID, o.OrderTime, o.TotalAmount, o.Status
    FROM Orders o
    WHERE o.TableID = table_id;
END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE GetEmployeesByRole(IN role_name VARCHAR(50))
BEGIN
    SELECT EmployeeID, Name, Role, PhoneNumber, HireDate
    FROM Employees
    WHERE Role = role_name;
END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE CountEmployeesByRole()
BEGIN
    SELECT Role, COUNT(*) AS EmployeeCount
    FROM Employees
    GROUP BY Role;
END$$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE GetCustomerOrderCounts()
BEGIN
    SELECT c.CustomerID, c.Name, COUNT(o.OrderID) AS OrderCount
    FROM Customers c
    LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
    GROUP BY c.CustomerID, c.Name;
END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE GetRecentOrders()
BEGIN
    SELECT o.OrderID, c.Name AS CustomerName, o.OrderTime, o.TotalAmount, o.Status
    FROM Orders o
    JOIN Customers c ON o.CustomerID = c.CustomerID
    ORDER BY o.OrderTime DESC
    LIMIT 5;
END$$
DELIMITER ;

DELIMITER $$

CREATE PROCEDURE GetMenuItemPopularity()
BEGIN
    SELECT mi.MenuItemID, mi.Name AS MenuItemName, COUNT(oi.OrderItemID) AS TimesOrdered
    FROM MenuItems mi
    LEFT JOIN OrderItems oi ON mi.MenuItemID = oi.MenuItemID
    GROUP BY mi.MenuItemID, mi.Name
    ORDER BY TimesOrdered DESC;
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE GetDailyReservationSummary()
BEGIN
    SELECT DATE(ReservationTime) AS ReservationDate, COUNT(*) AS TotalReservations
    FROM Reservations
    GROUP BY DATE(ReservationTime)
    ORDER BY ReservationDate DESC;
END$$

DELIMITER ;

DELIMITER $$
CREATE PROCEDURE GetRecentHires(IN start_date DATE, IN end_date DATE)
BEGIN
    SELECT 
        EmployeeID,
        Name,
        Role,
        PhoneNumber,
        HireDate
    FROM Employees
    WHERE HireDate BETWEEN start_date AND end_date
    ORDER BY HireDate DESC;
END$$
DELIMITER ;

DELIMITER $$

CREATE PROCEDURE GetReservationsAtExactTime(IN res_datetime DATETIME)
BEGIN
    SELECT 
        r.ReservationID,
        c.Name AS CustomerName,
        r.ReservationTime,
        r.Status,
        t.TableID
    FROM Reservations r
    JOIN Customers c ON r.CustomerID = c.CustomerID
    JOIN Tables t ON r.TableID = t.TableID
    WHERE r.ReservationTime = res_datetime;
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE UpdateMenuItemPrice(IN item_id INT, IN new_price DECIMAL(10,2))
BEGIN
    UPDATE MenuItems
    SET Price = new_price
    WHERE MenuItemID = item_id;
END$$

DELIMITER ;

CALL GetReservationsByDate('2025-06-10');
CALL GetOrdersByTable(3);
CALL GetCompletedOrdersWithPayment();
CALL GetCancelledReservations();
CALL GetUnavailableMenuItems();
CALL GetTableOrderSummary(3);
CALL GetEmployeesByRole('Chef');
CALL CountEmployeesByRole();
CALL GetCustomerOrderCounts();
CALL GetRecentOrders();
CALL GetMenuItemPopularity();
CALL GetDailyReservationSummary();
CALL GetReservationsAtExactTime('2025-06-02 00:00:00');
CALL GetReservationsAtExactTime('2025-06-06 00:00:00');
CALL UpdateMenuItemPrice(2, 8.49);
SELECT * FROM MenuItems WHERE MenuItemID IN (2);




