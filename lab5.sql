--task 1
SELECT city, COUNT(branchNo) FROM branch
GROUP BY city;

--task 2
SELECT sex, COUNT(sex) AS 'Number', 
MAX(salary) AS 'MaxSalary',
MIN(salary) AS 'MinSalary' FROM staff
GROUP BY sex;

--task 3
SELECT position1, sex, COUNT(sex) FROM staff
GROUP BY position1, sex 
ORDER BY COUNT(sex) DESC;

--task 4
SELECT position1,
AVG(salary)/2 AS 'Half avg salary'
FROM staff
GROUP BY position1
ORDER BY position1 DESC;

--task 5
SELECT branchNo, COUNT(branchNo) AS 'Workers', SUM(salary) AS 'Sum of salaries' FROM staff
GROUP BY branchNo
HAVING COUNT(branchNo)>1;

--task 6
SELECT *, COUNT(city) AS 'Number of Property' FROM propertyforrent
WHERE type1 = 'flat'
HAVING COUNT(city)>2; 

--task 7
SELECT staffNo, fName, IName, DOB FROM staff
WHERE branchNo IN (SELECT branchNo FROM branch WHERE city = 'London')
GROUP BY fName, IName;

--task 8
SELECT fName, IName, position1, 
salary-(SELECT AVG(salary) FROM staff) AS 'diffSalary' 
FROM staff
WHERE salary >(SELECT AVG(salary) FROM staff);

--task 9
SELECT * FROM propertyforrent
WHERE staffNo IN (SELECT staffNo FROM staff WHERE city = 'Glasgow');

--task 10
SELECT * FROM propertyforrent
WHERE rent < (SELECT MIN(rent) FROM propertyforrent WHERE ownerNo = (SELECT ownerNo FROM privateOwner WHERE fname = 'Carol'));

--task 11
SELECT * FROM propertyforrent
WHERE rent > (SELECT MAX(rent) FROM propertyforrent WHERE ownerNo = (SELECT ownerNo FROM privateowner WHERE fname = 'Tony'));

--task 12
SELECT * FROM propertyforrent
INNER JOIN client1 ON
rent >= maxRent
AND Typee = prefType;

--task 13
SELECT client1.`fName`, branchNo, staffNo FROM Registration
INNER JOIN client1 ON
Registration.`clientNo` = client1.`clientNo` 
ORDER BY branchNo, client1.`fName`;

--task 14
SELECT fname, position1, branch.`postcode` FROM staff
INNER JOIN branch ON
(SELECT branchNo FROM branch WHERE city = 'London') = staff.`branchNo`
OR (SELECT branchNo FROM branch WHERE city = 'Glasgow') = staff.`branchNo`
ORDER BY DOB;
