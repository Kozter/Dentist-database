SELECT E.Employee_ID, E.Employee_FirstName, E.Employee_LastName,
COUNT(A.Patient_ID) AS Number_of_Patients
FROM Employees E, Appointment_Workers AW, Appointments A
WHERE E.Employee_ID = AW.Employee_ID
AND AW.Appointment_WorkerID = A.Appointment_WorkerID
AND E.Employee_TypeID IN (SELECT Employee_TypeID FROM Employee_Types
WHERE TypeName LIKE '%dentist%')
GROUP BY E.Employee_ID,E.Employee_FirstName, E.Employee_LastName
HAVING COUNT(A.Patient_ID) = (SELECT TOP 1 COUNT(Patient_ID) FROM Appointments
GROUP BY Appointment_WorkerID ORDER BY COUNT(Patient_ID));

/* Which Dentist treated the lowest number of patients? */

SELECT Appointment_ID, Appointment_Date, Appointment_time
FROM Appointments
ORDER BY Appointment_Date, Appointment_time ASC

/* List number of appointments per week in order of the date and time they occurred. */

SELECT A.[Patient_ID],[Personal_ID],[Patient_FirstName],[Patient_LastName],[Patient_DOB],[City],[ZipCode],[Phone],[Email],[Remarks],[Street], B.[Next_Appointment]
FROM Patients A INNER JOIN Appointments B
ON A.Patient_ID = B.Patient_ID
WHERE Next_Appointment != 'null';

/* Retrieve Patient details whose treatment(s) spanned over more than 1 appointments for each treatment */

SELECT E.Employee_ID, A.Appointment_ID,A.Patient_ID,A.Appointment_WorkerID,A.RoomBooking_ID,A.PatientTreatment_ID,A.Price,A.Diagnosis,A.Status,A.Appointment_Date,A.Appointment_time
FROM Employees E, Appointment_Workers AW, Appointments A
WHERE E.Employee_ID = AW.Employee_ID
AND AW.Appointment_WorkerID = A.Appointment_WorkerID
AND E.Employee_TypeID IN (SELECT Employee_TypeID FROM Employee_Types
WHERE TypeName != 'Trainee dentist')
GROUP BY E.Employee_ID, A.Appointment_ID,A.Patient_ID,A.Appointment_WorkerID,A.RoomBooking_ID,A.PatientTreatment_ID,A.Price,A.Diagnosis,A.Status,A.Appointment_Date,A.Appointment_time

/* Retrieve list of appointments where no student trainees were assigned */

SELECT Room_ID, COUNT(Room_ID) as 'room appointments'
FROM Room_Bookings
GROUP BY Room_ID
HAVING COUNT(Room_ID) > 1 ;

/* Retrieve the room with least number of appointments performed */
 
SELECT * FROM Patients
WHERE Patient_DOB <= DATEADD(YEAR, -55, SYSDATETIME())
ORDER BY Patient_DOB ASC

/* Retrieve list of patients whose age is more than 55 years old. */

SELECT E.Employee_ID, E.Employee_FirstName, E.Employee_LastName, R.Duration, SUM(R.Duration/60.0) AS 'Total hours'
FROM Employees E, Appointment_Workers AW, Appointments A, Room_Bookings R 
WHERE E.Employee_ID = AW.Employee_ID
AND AW.Appointment_WorkerID = A.Appointment_WorkerID
GROUP BY E.Employee_ID,E.Employee_FirstName, E.Employee_LastName, R.Duration

/* Calculate and present Total Hours spent by each doctor on all patients across all periods */
