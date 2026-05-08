INSERT INTO STUDENT (RollNo, StudentName, Course, DOB) VALUES
('R001', 'Aarav Sharma',  'CSE', '2003-05-12'),
('R002', 'Isha Verma',    'ECE', '2002-11-23'),
('R003', 'Rahul Mehta',   'MECH', '2003-02-08'),
('R004', 'Sneha Gupta',   'CSE', '2004-07-19'),
('R005', 'Karan Singh',   'IT',   '2003-09-30');
INSERT INTO ENROLLMENT (RollNo, SID, DateOfEnrollment) VALUES
('R001', 'SOC02', '2026-01-10'),
('R002', 'SOC02', '2026-01-10'),
('R003', 'SOC02', '2026-01-10'),
('R004', 'SOC02', '2026-01-10'),
('R005', 'SOC02', '2026-01-10');
SELECT S.SocName
FROM SOCIETY S
JOIN ENROLLMENT E ON S.SOCID = E.SID
GROUP BY S.SOCID, S.SocName
HAVING COUNT(E.RollNo) > 5;
