📘 Task 2: Data Insertion and Handling NULLs (SQL Server)
📌 Overview

This task demonstrates data manipulation operations (DML) on the E-commerce database schema.
It covers inserting sample records, updating existing data, deleting rows, handling NULL values, using DEFAULT values, and verifying results.

The operations are written in SQL Server (T-SQL) and build on top of the schema from Task 1.

📂 Features

✅ Insert sample data into all major tables
✅ Demonstrates NULL and DEFAULT handling
✅ Update records with conditions
✅ Delete rows safely with WHERE and cascading relationships
✅ Verification queries with SELECT

⚙️ Operations in task2.sql
🔹 1. INSERT

Adds customers (with missing optional fields like phone, postal code).

Adds categories, products, orders, payments, shipping, reviews, and users.

Demonstrates usage of DEFAULT and NULL values.

🔹 2. UPDATE

Reduces product stock after an order.

Updates order status from Pending → Delivered.

Fixes missing customer phone number.

🔹 3. DELETE

Deletes a review.

Deletes an order → cascades deletion of related order items & payments.

🔹 4. SELECT (Verification)

Queries to confirm data in all tables (Customers, Products, Orders, etc.).

✅ Outcome

A populated database with consistent test data.

Demonstrates how to handle NULL values, DEFAULT values, and cascade deletes.

🔑 Key Concepts

DML (INSERT, UPDATE, DELETE)

NULL handling

DEFAULT constraints

Cascading deletes