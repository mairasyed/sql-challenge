titles 
-
title_id varchar(5) PK
title varchar(25)



employees 
-
emp_no PK int 
emp_title_id varchar(5) fk >- titles.title_id  
birth_date  date
first_name varchar(20)
last_name varchar(20) 
sex varchar(1)
hire_date date

departments 
-
dept_no  PK varchar(4) 
dept_name varchar(20)

dept_emp
-
emp_no PK int fk >- employees.emp_no
dept_no PK varchar(4) fk >- departments.dept_no

dept_manager
-
dept_no varchar(4) fk >- departments.dept_no
emp_no PK int fk - employees.emp_no

salaries
-
emp_no PK int fk - employees.emp_no
salary int

