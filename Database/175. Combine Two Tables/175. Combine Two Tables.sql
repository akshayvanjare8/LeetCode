-- Create Table Person

Create table If Not Exists Person (personId int, firstName varchar(255), lastName varchar(255));

Truncate table Person;
insert into Person (personId, lastName, firstName) values ('1', 'Wang', 'Allen');
insert into Person (personId, lastName, firstName) values ('2', 'Alice', 'Bob');


-- Create Table Address 

Create table If Not Exists Address (addressId int, personId int, city varchar(255), state varchar(255));

Truncate table Address;
insert into Address (addressId, personId, city, state) values ('1', '2', 'New York City', 'New York');
insert into Address (addressId, personId, city, state) values ('2', '3', 'Leetcode', 'California');

-- Solution

# Write your MySQL query statement below

SELECT firstname, lastname, city, state FROM Person as P
LEFT JOIN Address as Ad on P.personID = Ad.personID;