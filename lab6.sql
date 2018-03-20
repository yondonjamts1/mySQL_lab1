--task 1
SELECT * FROM staff
WHERE staff.position1 = "Manager" AND staff.branchNo = 'B005';

--task 2
SELECT * FROM staff
WHERE staff.staffNo LIKE "SL%" AND staff.sex = "M"
ORDER BY ASC;
