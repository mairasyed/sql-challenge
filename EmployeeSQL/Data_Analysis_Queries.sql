-- Data Analysis (20 points)


-- List the employee number, last name, first name, sex, and salary of each employee (2 points)
-- Salary by Employee

select employee_info.emp_no,
		employee_info.last_name,
		employee_info.first_name,
		employee_info.sex,
		employee_salary.salary

from employees as employee_info

		left join salaries as employee_salary
		
		on employee_info.emp_no = employee_salary.emp_no
		
		ORDER BY employee_info.emp_no
		
		limit 5;
		
		
		
		
-- List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
-- Employees Hired in 1986

select last_name, first_name, hire_date

from employees 

where extract (year from hire_date) = 1986;

-- where hire_date BETWEEN '1986-01-01' AND '1986-12-31'




-- List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)
-- Manager of Each Department 
select 	employee_info.emp_no,
		department_manager.dept_no,
		departments_info.dept_name,
		employee_info.last_name,
		employee_info.first_name
		
		
from employees as employee_info

		inner join dept_manager as department_manager
		
		on employee_info.emp_no = department_manager.emp_no
		

		inner join departments as departments_info
	
		on department_manager.dept_no = departments_info.dept_no
		
		ORDER BY employee_info.emp_no
		
		limit 5;



-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
-- Department of Each Employee

select employee_info.emp_no,
	departments_info.dept_no,
	departments_info.dept_name,
	employee_info.last_name,
	employee_info.first_name
	
From employees as employee_info
	
	inner join dept_emp as department_employee
	
	on employee_info.emp_no = department_employee.emp_no
		
    inner join departments as departments_info
	
	on department_employee.dept_no = departments_info.dept_no
	
	order by employee_info.emp_no
	
	limit 5;
	
	
-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
-- Employees whose first name is "Hercules" and last name begins with "B."

select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%'



-- List each employee in the Sales department, including their employee number, last name, and first name.
-- Employees working in the Sales Department

select employee_info.emp_no,
		departments_info.dept_name,
		employee_info.last_name,
		employee_info.first_name
		
from employees as employee_info
	
	inner join dept_emp as department_employee
	
	on employee_info.emp_no = department_employee.emp_no
	
    inner join departments as departments_info
	
	on department_employee.dept_no = departments_info.dept_no
    
	where departments_info.dept_name = 'Sales'
    
	order by employee_info.emp_no
	
	limit 5;


-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

-- Employees in the Sales and Development departments
select employee_info.emp_no,
		employee_info.last_name,
		employee_info.first_name,
		departments_info.dept_name
		
from employees as employee_info
	
	inner join dept_emp as department_employee
	
	on employee_info.emp_no = department_employee.emp_no
	
    inner join departments as departments_info
	
	on department_employee.dept_no = departments_info.dept_no
where departments_info.dept_name in ('Sales', 'Development')
order by employee_info.emp_no
 limit 5;
	
-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
-- Frequency count of Employee last names
select last_name, count (last_name)
from employees
group by last_name
order by count(last_name) desc
limit 5;