Create table If Not Exists Employee (id int, name varchar(255), salary int, departmentId int);

Create table If Not Exists Department (id int, name varchar(255));

Truncate table Employee;

insert into Employee (id, name, salary, departmentId) values ('1', 'Joe', '85000', '1');
insert into Employee (id, name, salary, departmentId) values ('2', 'Henry', '80000', '2');
insert into Employee (id, name, salary, departmentId) values ('3', 'Sam', '60000', '2');
insert into Employee (id, name, salary, departmentId) values ('4', 'Max', '90000', '1');
insert into Employee (id, name, salary, departmentId) values ('5', 'Janet', '69000', '1');
insert into Employee (id, name, salary, departmentId) values ('6', 'Randy', '85000', '1');
insert into Employee (id, name, salary, departmentId) values ('7', 'Will', '70000', '1');

Truncate table Department;

insert into Department (id, name) values ('1', 'IT');
insert into Department (id, name) values ('2', 'Sales');


-- Solution

# Write your MySQL query statement below

SELECT D.Name as Department, E.Name as Employee, E.Salary 
FROM Department D, Employee E, Employee E2  
WHERE D.ID = E.DepartmentId 
and E.DepartmentId = E2.DepartmentId 
and 
E.Salary <= E2.Salary
group by D.ID,E.Name 
having count(distinct E2.Salary) <= 3
order by D.Name, E.Salary desc