# Library Database System

## 📌 Project Overview

A simple relational database system designed to manage a library's users, books, and borrowing records.

The project was built using **PostgreSQL** to practice database design, table relationships, foreign keys, data manipulation, and real-world SQL queries.

## 🎯 Project Objectives

The main goals of this project are to:

* Design a relational database for a library system.
* Identify entities and their relationships.
* Implement the database using PostgreSQL.
* Use primary keys and foreign keys to maintain data integrity.
* Practice writing real-world SQL queries.
* Apply `JOIN`, `WHERE`, `GROUP BY`, `COUNT`, `HAVING`, `ORDER BY`, and `LIMIT`.

## 🗂️ Database Structure

The database consists of three main tables:

### Users

Stores information about library users.

* `id` — Primary Key (UUID)
* `name` — User's name
* `email` — User's email

### Books

Stores information about the books available in the library.

* `id` — Primary Key (UUID)
* `name` — Book name
* `type` — Book category/type

### Borrowings

Stores borrowing transactions between users and books.

* `id` — Primary Key (UUID)
* `user_id` — Foreign Key referencing `users.id`
* `book_id` — Foreign Key referencing `book.id`
* `borrow_date` — Date when the book was borrowed
* `return_date` — Expected/recorded return date

## 🔗 Relationships

The database uses foreign keys to establish relationships between the tables.

```text
Users
  │
  │ 1
  │
  │ N
Borrowings
  │
  │ N
  │
  │ 1
Books
```

* One user can have many borrowing records.
* One book can appear in many borrowing records over time.
* `borrowings.user_id` references `users.id`.
* `borrowings.book_id` references `book.id`.

## 🧩 ER Diagram

The Entity-Relationship Diagram was designed before implementing the database tables.

![Library Database ER Diagram](ER-Diagram.png)

## 🔍 SQL Queries

The project includes real-world SQL queries demonstrating:

* Joining users with their borrowing records.
* Joining users, borrowings, and books.
* Counting the number of books borrowed by each user.
* Grouping borrowed books by category.
* Filtering grouped results using `HAVING`.
* Filtering records using `WHERE`.
* Sorting results using `ORDER BY`.
* Limiting query results using `LIMIT`.

## 🛠️ Technologies

* **PostgreSQL**
* **SQL**
* **ER Diagram / Relational Database Design**
* **Git & GitHub**

## 📁 Project Files

```text
library-db-design/
│
├── library_system.sql
├── ER-Diagram.png
└── README.md
```

### `library_system.sql`

Contains the SQL commands used to:

* Create the database structure.
* Create tables.
* Define primary and foreign keys.
* Insert sample data.
* Execute the project's real-world queries.

## 📚 What I Practiced

Through this project, I practiced:

* Relational database design
* Primary Keys and Foreign Keys
* UUIDs
* Table relationships
* `JOIN`
* `WHERE`
* `GROUP BY`
* `COUNT`
* `HAVING`
* `ORDER BY`
* `LIMIT`
* Basic database normalization concepts
* Writing SQL queries based on real database relationships
