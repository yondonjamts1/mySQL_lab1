--task 1
select city,count(branchNo) from branch
group by city;

--task 2
SELECT sex, count(sex), max(salary), min(salary) from staff
group by sex;
