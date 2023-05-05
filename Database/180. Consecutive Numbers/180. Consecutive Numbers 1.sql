Create table If Not Exists Logs (id int, num int);

Truncate table Logs;

insert into Logs (id, num) values ('1', '1');
insert into Logs (id, num) values ('2', '1');
insert into Logs (id, num) values ('3', '1');
insert into Logs (id, num) values ('4', '2');
insert into Logs (id, num) values ('5', '1');
insert into Logs (id, num) values ('6', '2');
insert into Logs (id, num) values ('7', '2');

-- Solution

# Write your MySQL query statement below

SELECT DISTINCT Num as ConsecutiveNums 
FROM 
(
  SELECT Num, @cnt := if (@prev = (@prev := Num), @cnt + 1, 1) as freq
  FROM
  Logs, (SELECT @cnt := 0, @prev := (SELECT Num FROM Logs limit 1)) as c
  ) as n
WHERE freq > 2;