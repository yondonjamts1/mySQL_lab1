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
--task 15
SELECT * FROM staff
WHERE salary > 20000 && sex = 'M';
