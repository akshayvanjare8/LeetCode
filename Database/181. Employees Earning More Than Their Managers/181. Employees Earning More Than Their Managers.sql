Create table If Not Exists Employee (id int, name varchar(255), salary int, managerId int);

Truncate table Employee;

insert into Employee (id, name, salary, managerId) values ('1', 'Joe', '70000', '3');
insert into Employee (id, name, salary, managerId) values ('2', 'Henry', '80000', '4');
insert into Employee (id, name, salary, managerId) values ('3', 'Sam', '60000', 'None');
insert into Employee (id, name, salary, managerId) values ('4', 'Max', '90000', 'None');

-- Solution

# Write your MySQL query statement below

SELECT e2.name as Employee
FROM Employee e1
INNER JOIN Employee e2 ON e1.id = e2.managerID
WHERE
e1.salary < e2.salary