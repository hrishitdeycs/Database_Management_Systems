SELECT S.SocName, (S.TotalSeats - COUNT(E.RollNo)) AS VacantSeats
FROM SOCIETY S
LEFT JOIN ENROLLMENT E ON S.SocID = E.SID
GROUP BY S.SocID, S.SocName, S.TotalSeats;
