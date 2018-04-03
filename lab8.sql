--Bodlogo 1



--Bodlogo 2

SELECT * FROM staff
WHERE
    staff.branchNo =(
    SELECT registration.branchNo FROM registration
    WHERE registration.datejoined = '2004-01-02'
);

--Bodlogo 3

--Daalgavar

--Daalgavar 4

SELECT * FROM client1
ORDER BY RAND() LIMIT 0,1;

--Daalgavar 8

SELECT * FROM registration  
ORDER BY datejoined DESC
LIMIT 0,2;

