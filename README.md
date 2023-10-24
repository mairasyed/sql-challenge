## SQL Challenge- Pewlett Hackard

## Project Overview

The project is for a fictional company named Pewlett Hackard which has hired me as their new data engineer. The main task assigned to me is to do a research project on the employees the company hired during the 1980s and 1990s in my current capacity. The only resources at hand in order to accompalish the task are six CSV files from the employye database including employees_CSV, dept_managers_CSV, salaries_CSV and so on.I will be making use of my knowledge and expertise of SQL tools to analysis the available data. We have broken down the task into three parts: 1) data modelling, 2) data engineering & 3) data analysis.

In this SQL challenge, we explore and analyze employee data using a relational database. The challenge consists of several SQL queries that aims to provide insights into employee information, department management, hiring trends, and more.


## Data Sources

As described in the brief overview of my project, the data I will be using is provided by the company Pewlett-Hackard. These are six CSV files related to multiple employee attributes(employee number, department, titles, salaries etc.) fetched from the employee database from the year 1980s and 1990s.

## Project Structure

If we talk about the project structure, we have the following files/folders as given below

First we have our resources folder named "Starter_code" in which is enclosed a "data" folder  conatining all the six CSV files that we will be using.
Then we have a "sql-challenge" folder which contains a "README.md" file and a folder called "EmployeeSQL"
The "EmployeeSQL" folder further conatins the major files of our project namely the Employee_schema.sql,Employees_Table_PK_FK.sql, Employee_db_ERD_diagram.png & Data_Analysis_Queries.sql

## Database Schema/Data Modelling
As the first stepping stone to my project I inspected all the CSV files thoroughly and then created an Entity Relationship Diagram from the tables. To do so I made use of an efficient online datadebase diagram drawing tool called  the "QuickDBD" using the below schema:

Insert image of the schema

As evident from the above schema, I tried to assign the datatype, primary keys, foreign keys and other constraints for the tables simultaneously creating relationships amongst entities such as (one-to-one -, many-to-one >- etc.) wherever applicable to the best of my knowledge.Once everything was in place with regard to the schema, the QuickDBD generated an Entity Relationship Diagram as shown below:

Insert ERD

## Data Engineering
I then moved on to import the 
















