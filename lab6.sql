--task 1
SELECT * FROM staff
WHERE staff.position1 = "Manager" AND staff.branchNo = 'B005';

--task 2
SELECT * FROM staff
WHERE staff.staffNo LIKE "SL%" AND staff.sex = "M"
ORDER BY ASC;

--task 3
----logic.oor bol ingeed xiichixmeer l bgan
select * , abs(min(staff.salary) - staff.salary) as yalgaa
from staff
ORDER BY yalgaa DESC;

--task 4
select * from staff
where branchNo IN (select branchNo from branch where city = 'London');

--task 5
--oilgosoon
select * from propertyforrent
where rent < (
	select min(rent) from propertyforrent
	where ownerNo IN (
		select ownerNo from privateowner
		where fname = 'Tony'
		)
	);

--task 6
SELECT * FROM staff
WHERE branchNo IN (
    SELECT branchNo FROM branch
    WHERE street = '22 Deer Rd'
    );

--task 7
--xiinee
SELECT * FROM propertyforrent
WHERE propertyforrent.staffNo IN(
    SELECT staffNo FROM staff
    WHERE branchNo IN(
        SELECT branchNo FROM branch
        WHERE branch.street = '163 Main St'
        )
    );

--task 8
SELECT * FROM propertyforrent
WHERE propertyforrent.rent < (
    SELECT client1.maxRent
    FROM client1
    WHERE client1.fName = 'Mary'
    );
    
--task 9

--task 10

--task 11
SELECT * FROM client1
WHERE client1.clientNo IN(
    SELECT viewing.clientNo FROM viewing
    WHERE viewing.comment1 = ' '
    );
    
--task 12
UPDATE staff
SET staff.salary=(staff.salary+0.1*staff.salary)
WHERE staff.branchNo = 'B003';

--task 13
SELECT * FROM privateowner
WHERE privateowner.ownerNo IN(
    SELECT propertyforrent.ownerNo FROM propertyforrent
    GROUP BY propertyforrent.ownerNo
    HAVING COUNT(propertyforrent.ownerNo) > 1
    );	

--task 14
SELECT COUNT(staff.staffNo) as 'staffcount', SUM(staff.salary) as 'sumsal' FROM staff
WHERE staff.branchNo IN(
    SELECT branchNo FROM branch
    GROUP BY staff.staffNo
    HAVING COUNT(staff.staffNo) > 1
    );

--task 15
----aldaagui bolson
SELECT * FROM propertyforrent
WHERE min(propertyforrent.rent) > (
    SELECT propertyforrent.rent FROM propertyforrent
    WHERE propertyforrent.ownerNo IN(
        SELECT privateowner.ownerNo FROM privateowner
        WHERE privateowner.fName = 'Carol'
    )
);

--task 16
SELECT * FROM propertyforrent
WHERE propertyforrent.staffNo IN(
    SELECT staff.staffNo FROM staff
    WHERE staff.position1 = 'supervisor'
    );
