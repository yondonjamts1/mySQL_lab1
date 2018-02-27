--task 1
select city,count(branchNo) from branch
group by city;

--task 2
SELECT sex, count(sex), max(salary), min(salary) from staff
group by sex;

--task 3
select position1,sex,count(sex) from staff
group by position1,sex
order by count(sex) desc;
