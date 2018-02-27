--task 1
update staff set salary = (salary * 1.1)
where position1 = 'Assistant';

--task 2
SELECT * FROM staff WHERE sex = "M" ORDER BY dob ASC

--task 3
select * from propertyforrent
where rooms between 3 and 4
order by rent ASC;

--task 4
SELECT * FROM staff
WHERE lName LIKE 'B%';

--task 5
SELECT * FROM client1
WHERE telNo LIKE "%1%%1%%1%";

--task 6
SELECT * FROM viewing
where comment1 not like " ";

--task 7
select avg(salary) as 'SalaryAVG' from staff;
