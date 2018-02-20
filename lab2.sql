SELECT * FROM staff 
WHERE position1 IN ("Manager" ,"Supervisor");

SELECT * FROM staff
WHERE sex = "F"
ORDER BY dob DESC;

SELECT * FROM propertyforrent
WHERE rooms BETWEEN 3 AND 5
ORDER BY rent;
