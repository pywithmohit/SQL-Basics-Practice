
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(30),
    salary INT,
    city VARCHAR(30)
);
INSERT INTO employee (emp_id, name, department, salary, city)
VALUES
(101, 'Rohit', 'IT', 35000, 'Jaipur'),
(102, 'Amit', 'HR', 30000, 'Delhi'),
(103, 'Priya', 'IT', 45000, 'Mumbai'),
(104, 'Neha', 'Sales', 28000, 'Jaipur'),
(105, 'Rahul', 'Finance', 50000, 'Delhi');

-- view the data 
select *
from employee

--Q.1 update rohit salary into 40000 

update employee
set salary = 40000
where name = 'Rohit';

--Q.2 change the city of priya into pune

update employee 
set city = 'Pune'
where name = 'Priya';

--Q3 increase the salary amount 5000 where department = 'IT'

update employee 
set salary = salary + 5000
where department = 'IT';

--Q4 update the neha department into 'HR' 

Update employee 
set department = 'HR'
where name = 'Neha';

--Q5 set the salary 35000 thousand who's work in delhi

update employee 
set salary = 35000
where city = 'Delhi';

--Q6 delete the employee row where id = 104

delete from employee 
where emp_id = 104;

--Q7 Delete the row of rahul from the table
delete from employee
where name = 'Rahul';

--Q8 delete the row of employee who's work in delhi
delete from employee
where city = 'Delhi';

--Q9 delete the row of hr department
delete from employee 
where department = 'HR';

--Q10 delete the employee row who's salary is less then 35000
delete from employee 
where salary < 35000 ;

--Q11 add a mail column and add data type
alter table employee
add column email VARCHAR(50);

--Q12 rename the city column into location
alter table employee
rename column city to location ;

--Q13 add age column with int data type

alter table employee
add column age INT;

select *
from employee 

-- Update the mail id 

update employee 
set email = 'rohitraj@gmail.com'
where name = 'Rohit';

update employee 
set email = 'Priyaraj@gmail.com'
where name = 'Priya';

--Update the age

update employee 
set age = 35
where name = 'Rohit';

update employee 
set age = 18
where name = 'Priya';

-- insert new values

INSERT INTO employee (emp_id, name, department, salary, location,email,age)
VALUES
(106, 'Rohit', 'IT', 45000, 'Jaipur','rraj@gmail.com',25),
(107, 'Akashay', 'HR', 220000, 'Delhi','Akashraj@gmail.com',55),
(108, 'Riya', 'IT', 85000, 'Mumbai', 'Riyaraj@gmail.com',45),
(109, 'Sneha', 'Sales', 88000, 'Jaipur','Sneharaj@gmail.com',88),
(110, 'Prajjuual', 'Finance', 180000, 'Delhi', 'rohitraj@gmail.com',29);

select *
from employee 

--Change Rohit deparment & salary

update employee 
set department = 'HR' , salary = 48000
where emp_id = 106;

-- total salary of each department

select department,
sum(salary) as total_salary
from employee
group by department
order by total_salary desc;

-- avg salary of each department

select department,
avg(salary) as total_salary
from employee
group by department
order by total_salary desc;

--name of the department in the column

select distinct
department
from employee;

--Display employee in city is >= 2

SELECT location,
       COUNT(*) AS total_emp
FROM employee
GROUP BY location 
HAVING COUNT(*) >= 2;

select *
from employee
