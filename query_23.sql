CREATE VIEW Society_Enrollment_Count
AS SELECT S.SocID, S.SocName, COUNT(E.RollNo) AS TotalStudentsEnrolled
    FROM SOCIETY S
    LEFT JOIN ENROLLMENT E ON S.SocID = E.SID
    GROUP BY S.SocID,S.SocName;
