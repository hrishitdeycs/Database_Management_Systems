UPDATE society
SET SocName = 'Debating'
WHERE SocID = 'SOC03';
SELECT DISTINCT S.StudentName
FROM STUDENT S
JOIN ENROLLMENT E ON S.RollNo = E. RollNo
JOIN SOCIETY SO ON E.SID = SO.SocID
WHERE SO.SocName IN ('Debating', 'Dancing', 'Sashakt');
