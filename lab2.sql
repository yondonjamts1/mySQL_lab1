--task 1
SELECT * FROM staff 
WHERE position1 IN ("Manager" ,"Supervisor");


--task 2
SELECT * FROM staff
WHERE sex = "F"
ORDER BY dob DESC;


--task 3
SELECT * FROM propertyforrent
WHERE rooms BETWEEN 3 AND 5
ORDER BY rent;


--task 4
SELECT fName, lName, telNo FROM client1
WHERE fName LIKE 'M%';


--task 5
SELECT * FROM client1
WHERE telNo LIKE "%8%%8%%8%";


--task 6
SELECT street,city,rooms,rent
FROM propertyforrent
WHERE staffNo NOT LIKE ''
ORDER BY rent ASC;


--task 7
SELECT * FROM privateowner 
ORDER BY privateowner.fName ASC;


--task 8 dutuu
--column name.g StaffCount bolgoj chadaagui baigaa
SELECT COUNT(staffNo) FROM staff;


--task 10
SELECT min(salary),max(salary),AVG(salary) FROM staff;


--task 11
SELECT COUNT(staffNo), SUM(salary) FROM staff
WHERE sex = "M";


--task 13
SELECT MAX(maxRent) FROM client1;


--task 14
SELECT AVG(maxRent) FROM client1;


--task 15
SELECT * FROM staff
WHERE salary > 20000 && sex = 'M';


--task 16
SELECT * FROM propertyforrent
WHERE rent BETWEEN 400 AND 600 && city = "Glasgow";


--task 17
SELECT * FROM propertyforrent
WHERE city = "London" && rooms = "4";


--task 19
SELECT * FROM staff
WHERE dob < "1970-01-01" && position1 = "Assistant";


--task 20
SELECT * FROM viewing
WHERE viewDate LIKE "2004-05-%";


--task 22
SELECT * FROM staff
WHERE position1 = "Manager" OR branchNo = "B007";
