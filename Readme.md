**Employee Payroll System (SQL)**

**📌 Project Overview**

The Employee Payroll System is a relational database project designed to manage and automate corporate payroll operations. This system handles employee records, department structures, and complex financial calculations including tax deductions, bonuses, and net take-home pay.

**📂 Project Structure**

The project is organized into modular folders to demonstrate professional database development practices:

* schema/: Contains Data Definition Language (DDL) scripts to create the database and tables.

* data/: Contains Data Manipulation Language (DML) scripts for populating the system with sample records.

* retrieving/: Contains analytical queries, business reports, and stored procedures for data extraction.

**🛠️ Tech Stack**

* Database: MySQL

* Tool: MySQL Workbench

* Language: SQL (Standard)

**📊 Database Design**

The system uses a normalized relational schema (3NF) to ensure data consistency:

* Departments: Manages organizational units.

* Employees: Stores staff profiles linked to departments.

* Salaries: Tracks financial payouts, bonuses, and payment dates.

**🚀 Key Features**

* Relational Integrity: Enforced through Primary and Foreign Key constraints.

* Net Pay Automation: SQL logic to calculate tax deductions (15%) and final net payout.

* Advanced Analytics: Uses Window Functions (RANK()) to identify top earners per department.

* Reusable Logic: Includes a Stored Procedure for generating standardized monthly payroll reports.

**💻 How to Use**

* Execute the script in schema/create_tables.sql to build the database.

* Run data/insert_sample_data.sql to populate the tables.

* Use the scripts in retrieving/ to run analytical reports or call stored procedures.

**Example: Monthly Payout Report**

    CALL GetMonthlyPayroll('2025-01-31');

**📈 Learning Outcomes**

* Demonstrated ability in Relational Data Modeling.

* Proficiency in Multi-table JOINs and Aggregate Functions.

* Implementation of Database Programming (Stored Procedures) to automate business logic.

* Understanding of Data Normalization to reduce redundancy.

intern ID CITS2139