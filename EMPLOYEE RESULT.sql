select * from employees;
select * from  department_info where department_id=8;
select * from employees where department_id=8;
/*employee_id = 5004 designation is currently NULL.
department_id = 8 (Designing Department).
Salary = 70000.
Already another employee in the same department earns 70000.
That employee's designation is Graphic Designer.
So I want to update employee 5004's designation to Graphic Designer.*/

update employees set designation = "Graphic Designer" where employee_id=5004;

-- The query to retrieve distinct salaries from the Employees table

select distinct salary from employees;

/*  Provide aliases for the "age" and "salary" columns as "Employee_Age" and
"Employee_Salary", respectively. */

select age as Employee_Age , salary as Employee_Salary from employees;

/*employees with a salary greater than ₹50000 and hired before
2016-01-01.*/

select * from employees where salary > 50000 and  hire_date < '2016-01-01';

/*employees sorted by department ID in ascending order and salary in
descending order.*/

select * from employees order by department_id , salary desc ;

--  the first 5 employees hired in the year 2018.

select * from employees where hire_date between "2017-12-31" and "2019-01-01" limit 5;

-- Calculate the sum of all salaries in the Finance department.

select *from department_info where department_name='Finance';
-- finance  department id no is : 7

select sum(salary) as total_salary from employees where department_id=7;

-- Find the minimum age among all employees.

select min(age) as minium_age_of_employee from employees;

-- List the maximum salary for each location.

select location_id,max(salary) as maximum_salary from employees group by location_id;

/* Calculate the average salary for each designation containing the word
'Analyst'.*/

select avg(salary) as AVG_SALARY,designation from employees where designation like( "%Analyst") group by designation ;

-- Find departments with less than 3 employees.

select department_id,count(employee_id) as count_of_employees from employees group by department_id having (count_of_employees)<3 ;

-- Find locations with female employees whose average age is below 30.

select location_id,gender,avg (age) as age  from employees where gender='f' group by location_id having (age) < 30 ; 

/*List employee names, their designations, and department names where
employees are assigned to a department.*/
 

select e.employee_name,e.designation,d.department_name from employees as e
inner join department_info as d
on e.department_id=d.department_id order by employee_name;

-- LEFT JOIN
/*List all departments along with the total number of employees in each
department, including departments with no employees.*/

select d.department_id,d.department_name,count(e.employee_id) as total_employees from department_info as d
left join employees as e
on e.department_id=d.department_id
group by d.department_id,d.department_name;

-- RIGHT JOIN

/* Display all locations along with the names of employees assigned to each
location. If no employees are assigned to a location, display NULL for
employee name.*/

select l.location_id,l.location ,e.employee_name  from locations as l
right join employees as e
on l.location_id=e.location_id order by location_id;