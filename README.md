# Pewlett Hackard Employee Database

## Project Overview

This project is part of a data analytics course assignment for Pewlett Hackard, a fictional company. The goal is to model, engineer, and analyze employee data from the 1980s and 1990s. Using data provided in CSV files, we design the database schema, import the data into a relational database, and perform various SQL queries to answer business-related questions.

## Repository Structure
``` plaintext
EmployeeSQL/
├── data/                       # Contains the CSV data files used to populate the database
│   ├── departments.csv
│   ├── dept_emp.csv
│   ├── dept_manager.csv
│   ├── employees.csv
│   ├── salaries.csv
│   └── titles.csv
├── schemas/                    # Diagrams and table schemas for database design
│   ├── diagram.png             # ERD (Entity Relationship Diagram) of the database
│   └── table-queries.sql       # SQL for table creation (schema)
├── LICENSE
├── README.md                   # Project description and documentation
└── SQL Queries.sql             # SQL queries used to answer specific questions
```
## Getting Started

### Prerequisites
- PostgreSQL (or another SQL-compatible database)
- pgAdmin 4 (or any other SQL client)

### Setup Instructions
1. Clone the repository:
``` bash
git clone https://github.com/the-eva-a/sql-challenge.git
```

2. Navigate to the `EmployeeSQL` directory:
``` bash
cd EmployeeSQL
```
3. Set up the database by executing the Schema from `table-queries.sql`:
    - Load the CSV data into the corresponding tables in the database using pgAdmin or 
    the sql client of your choice. 
4. To execute the queries in the `SQL Queries.sql` file, connect to the database and run the queries as needed. 

## Database Schema

The database schema consists of the following tables:
- **employees**: Contains employee records, including employee numbers, birth dates, first and last names, gender, and hire dates.
- **salaries**: Stores salary information for employees.
- **departments**: Lists all departments within the company
- **dept_emp**: Records the department each employee belongs to.
- **dept_manager**: Lists the managers for each department.
- **titles**: Lists the job titles for each emplyee

## ERD Diagram
The Entity Relationship Diagram (ERD) illustrates how each table is connected.

## Acknowledgements
This project is part of the curriculum in the edX Data Analytics Bootcamp. Special thanks to my instructors and peers for their support and guidance.