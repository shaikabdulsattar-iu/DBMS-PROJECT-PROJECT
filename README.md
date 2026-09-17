# Software Management System

## Project Overview

The Software Management System is a DBMS project designed to manage software company information in a structured relational database.

## Entities

The system contains 8 entities:

1. Department
2. Employee
3. Client
4. Project
5. Task
6. Team
7. Milestone
8. Resource

## Technologies Used

- SQL
- SQLite
- DBMS
- Relational Database Concepts

## Database Relationships

- Department → Employee (1:N)
- Client → Project (1:N)
- Project → Task (1:N)
- Employee → Task (1:N)
- Project → Team (1:1)
- Project → Milestone (1:N)
- Team → Resource (1:N)

## SQL Files

- `sql/ddl.sql` - Table creation and constraints
- `sql/dml.sql` - Sample data
- `sql/queries.sql` - SQL queries and operations

## Project Structure

```text
Software-Management-System-DBMS/
│
├── sql/
├── diagrams/
├── docs/
├── screenshots/
└── README.md
