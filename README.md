# MySQL_Assignments


# SQL Assignment - Set 1

## Task Overview

This SQL assignment consists of various tasks involving database creation, table creation, data insertion, modification, and index creation.

### Task Details

1. **Create Database**
   - Created a database called 'assignment' to perform the tasks specified in this assignment.

2. **Create Tables and Insert Records**
   - Created tables from ConsolidatedTables.sql and entered records as specified.
   
3. **Create Table 'countries'**
   - Created a table called 'countries' with columns: name, population, and capital.
   - Inserted provided data into the table.
   - Added a couple of countries of my choice.
   - Changed 'Delhi' to 'New Delhi' as per instructions.

4. **Rename Table**
   - Renamed the table 'countries' to 'big_countries'.

5. **Create Tables**
   - Created tables: Product, Suppliers, and Stock with appropriate columns and constraints.
   - Used auto increment wherever applicable.
   
6. **Insert Records**
   - Inserted records into the Product, Suppliers, and Stock tables.

7. **Modify Supplier Table**
   - Modified the Supplier table to make the supplier name unique and not null.

8. **Modify Emp Table**
   - Added a column called 'deptno' to the Emp table.
   - Set the value of 'deptno' based on the given conditions.

9. **Create Unique Index**
   - Created a unique index on the 'emp_id' column in the Emp table.

10. **Create View**
    - Created a view called 'emp_sal' on the Emp table, selecting fields in the order of highest salary to the lowest salary.

---


# SQL Assignment - Set 2

## Task Overview

This SQL assignment consists of various tasks involving querying databases to retrieve specific information based on given criteria.

### Task Details

1. **Select Employees in Department 10 with Salary > 3000**
   - Selected all employees in department 10 whose salary is greater than 3000 from the Employee table.

2. **Grading of Students**
   - Calculated the number of students who graduated with first class and obtained distinction based on their marks from the Students table.

3. **List of Cities with Even ID Numbers**
   - Retrieved a list of city names from the Station table with even ID numbers, excluding duplicates.

4. **Difference between Total and Distinct City Entries**
   - Found the difference between the total number of city entries and the number of distinct city entries in the Station table.

5. **Queries on City Names**
   - Executed queries to retrieve city names from the Station table based on specific conditions, including vowels, first and last characters, and starting with consonants.

6. **Employee Names with Salary > $2000 and Employed for < 36 Months**
   - Retrieved a list of employee names with a salary greater than $2000 per month who have been employed for less than 36 months from the Emp table, sorted by descending order of salary.

7. **Monthly Spending on Salaries for Each Department**
   - Calculated the total salary expenditure for each department on a monthly basis from the Employee table.

8. **Number of Cities with Population > 100000**
   - Determined the number of cities in the City table with a population larger than 100000.

9. **Total Population of California**
   - Calculated the total population of California from the City table.

10. **Average Population of Districts in Each Country**
    - Calculated the average population of the districts in each country from the City table.

11. **Orders with 'Disputed' Status**
    - Retrieved order details for all orders that are 'Disputed' from the Orders and Customers tables.

---

# SQL Assignment - Set 3

## Task Overview

This SQL assignment consists of tasks involving stored procedures, functions, and triggers to implement specific functionalities and retrieve information from databases.

### Task Details

1. **Stored Procedure for Order Status**
   - Implemented a stored procedure that accepts the month and year as inputs and prints the ordernumber, orderdate, and status of the orders placed in that month.

2. **Function for Purchase Status**
   - Created a function that takes the customernumber as input and returns the purchase_status based on predefined criteria from the Payments table.
   - Executed a query to display customerNumber, customername, and purchase_status from the Customers table.

3. **Triggers for Cascade Operations**
   - Implemented triggers on the Movies and Rentals tables to replicate the functionality of 'on delete cascade' and 'on update cascade' without primary or foreign keys.

4. **Select Employee with Third Highest Salary**
   - Retrieved the first name of the employee who gets the third-highest salary from the Employee table.

5. **Assign Rank to Employees based on Salary**
   - Assigned a rank to each employee based on their salary, where the person with the highest salary has rank 1.

