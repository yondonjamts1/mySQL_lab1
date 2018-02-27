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

--task 8
select branchNo,count(staffNo) from staff
group by branchNo;

--task 9
select branchNo,max(salary),min(salary),avg(salary) from staff
group by branchNo;

--task 10
select branchNo,
count(case when sex = 'M' then 1 else null end) as 'Male staff',
count(case when sex = 'F' then 1 else null end) as 'Female staff',      
max(salary),min(salary),avg(salary) from staff
group by branchNo;

--task 11
select * from propertyforrent
where rent = (select min(rent) from propertyforrent where rooms =4);
