🍴 Restaurant Management System – SQL Project

This project is a database design and implementation for a Restaurant Management System. It covers essential restaurant operations such as menu management, reservations, orders, payments, and employee tracking, with sample data and stored procedures for advanced queries.

📌 Features
🔹 Database Schema

MenuItems – Stores details of dishes (name, price, category, availability).

Tables – Restaurant tables with seating capacity, location, and occupancy status.

Customers – Registered customer details.

Reservations – Customer reservations linked to tables.

Orders & OrderItems – Orders placed, linked with customers and menu items.

Payments – Order payments with method and status.

Employees – Employee information with roles (Chef, Manager, Waiter, etc.).

🔹 Sample Data

15 Menu Items across categories (Main Course, Dessert, Appetizer, Beverage).

15 Tables with different locations (Indoor, Outdoor, Balcony).

15 Customers with contact details.

15 Reservations with statuses (Booked, Completed, Cancelled).

15 Orders with detailed Order Items.

15 Payments with multiple methods (Cash, Card, UPI).

15 Employees across roles (Chef, Waiter, Manager, Cleaner).

🔹 Stored Procedures

Efficient pre-built queries for common use cases:

📅 GetReservationsByDate – Reservations on a given date.

🍽️ GetOrdersByTable – Orders for a specific table.

💳 GetCompletedOrdersWithPayment – Paid completed orders.

❌ GetCancelledReservations – All cancelled reservations.

🚫 GetUnavailableMenuItems – Menu items not available.

📊 GetTableOrderSummary – Order summary for a table.

👨‍🍳 GetEmployeesByRole – Employees filtered by role.

🔢 CountEmployeesByRole – Number of employees per role.

🛒 GetCustomerOrderCounts – Order count per customer.

🕒 GetRecentOrders – Last 5 orders.

⭐ GetMenuItemPopularity – Menu items ranked by number of orders.

📆 GetDailyReservationSummary – Daily reservation statistics.

👥 GetRecentHires – Employees hired between two dates.

⏰ GetReservationsAtExactTime – Reservations at a specific time.

💰 UpdateMenuItemPrice – Update the price of a menu item.

🔹 Example Queries
CALL GetReservationsByDate('2025-06-10');
CALL GetOrdersByTable(3);
CALL GetCompletedOrdersWithPayment();
CALL UpdateMenuItemPrice(2, 8.49);

🎯 Key Learning Outcomes

Database design with relationships & constraints (Primary Keys, Foreign Keys).

Use of stored procedures for modular and reusable queries.

Handling realistic restaurant operations with sample data.

SQL techniques like JOIN, GROUP BY, ORDER BY, and UPDATE.
