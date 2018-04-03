--Bodlogo 1



--Bodlogo 2

SELECT * FROM staff
WHERE
    staff.branchNo =(
    SELECT registration.branchNo FROM registration
    WHERE registration.datejoined = '2004-01-02'
);

--Bodlogo 3

