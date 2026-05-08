SELECT S.SocName AS SocietyName, S.MentorName, S.TotalSeats AS TotalCapacity,
COUNT(E.RollNo) AS TotalEnrolled, (S.TotalSeats - COUNT(E.RollNo)) AS UnfilledSeats 
FROM SOCIETY S
LEFT JOIN ENROLLMENT E ON S.SocID = E.SID
GROUP BY S.SocID, S.SocName, S.MentorName, S.TotalSeats;
