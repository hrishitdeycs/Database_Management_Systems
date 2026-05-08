SET @N = 20; --user input
SELECT *
FROM SOCIETY
WHERE TotalSeats > @N;
