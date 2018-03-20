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

--task 8
SELECT * FROM propertyforrent
WHERE propertyforrent.rent < (
    SELECT client1.maxRent
    FROM client1
    WHERE client1.fName = 'Mary'
    );
