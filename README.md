# Dentist-database
#### A little project involving creating a database for a dentist office 
### containing: 

##### -Entities that may be required for designing relational database
##### -Identify Candidate keys, Primary Keys and Foreign keys
##### -Different tables required for designed database
##### -Inserted dummy data for overview and functionality in each detailed/child tables.

## Database design choices and why database tables are in good normalized forms

We have two important factors to reach normal forms for each given schema in a given database design

•	It follows the functional dependencies and the fundamental business rules and constraints.
•	Our database has been tested and decomposes according to normal forms such as: we have atomic values, attributes with unique primary keys, and candidate/foreign keys to reference table relations.



## Explaining the understanding of concurrency and isolation in Relational Databases.

### Concurrency
- An example of a database concurrency could be the ability of the database to support multiple users and processes like an airline reservation system to support users at any given time.

### Isolation
- Could be a result of a transaction that should not be visible before it is complete. Let’s say we had credit transactions on the same account executed concurrently, that would leave the database inconsistent.


## Would It be a good idea to use NoSQL database instead of Relational Database for this project? 

-Relational Databases also referred to as SQL (RDBMS) and NOSQL have different structures, storage, price and different kind of usage depending on the project. RDBMS have a predefined schema making it really easy to work with, while NOSQL has a more dynamic schema. 

-NoSQL is a kind of non-relational databases that is specialized in storing non-tabular data. And in this case, the data given is tabular since it is in column form thus cannot be kept by NoSQL technologies.

-I would also add that the community of SQL is a mature technology making it reliable for experienced developers who understand it.
-The data is also not complex hence no need of using NoSQL databases. 

## Conclusion
-I would say SQL are ideal for this scenario since it´s really user-friendly, are ideal for this kind of project since it supports ACID (Atomicity, Consistency, Isolation, Durability) which helps to create a more consistent database, and also supports normalization.

# Testing our database:
## SQL-Queries:

#### a. Which Dentist treated the lowest number of patients?

SELECT E.Employee_ID, E.Employee_FirstName, E.Employee_LastName, COUNT(A.Patient_ID) AS Number_of_Patients
FROM Employees E, Appointment_Workers AW, Appointments A
WHERE E.Employee_ID = AW.Employee_ID
AND AW.Appointment_WorkerID = A.Appointment_WorkerID
AND E.Employee_TypeID IN (SELECT Employee_TypeID FROM Employee_Types
WHERE TypeName LIKE '%dentist%')
GROUP BY E.Employee_ID,E.Employee_FirstName, E.Employee_LastName
HAVING COUNT(A.Patient_ID) = (SELECT TOP 1 COUNT(Patient_ID) FROM Appointments
GROUP BY Appointment_WorkerID ORDER BY COUNT(Patient_ID));

#### b. List number of appointments per week in order of the date and time they occurred.

SELECT Appointment_ID, Appointment_Date, Appointment_time
FROM Appointments
ORDER BY Appointment_Date, Appointment_time ASC

#### c. Retrieve Patient details whose treatment(s) spanned over more than 1 appointments for each treatment.

SELECT A.[Patient_ID],[Personal_ID],[Patient_FirstName],[Patient_LastName],[Patient_DOB],[City],[ZipCode],[Phone],[Email],[Remarks],[Street], B.[Next_Appointment]
FROM Patients A INNER JOIN Appointments B
ON A.Patient_ID = B.Patient_ID
WHERE Next_Appointment != 'null';

#### d. Retrieve list of appointments where no student trainees were assigned.

SELECT E.Employee_ID, A.Appointment_ID,A.Patient_ID,A.Appointment_WorkerID,A.RoomBooking_ID,A.PatientTreatment_ID,A.Price,A.Diagnosis,A.Status,A.Appointment_Date,A.Appointment_time
FROM Employees E, Appointment_Workers AW, Appointments A
WHERE E.Employee_ID = AW.Employee_ID
AND AW.Appointment_WorkerID = A.Appointment_WorkerID
AND E.Employee_TypeID IN (SELECT Employee_TypeID FROM Employee_Types
WHERE TypeName != 'Trainee dentist')
GROUP BY E.Employee_ID, A.Appointment_ID,A.Patient_ID,A.Appointment_WorkerID,A.RoomBooking_ID,A.PatientTreatment_ID,A.Price,A.Diagnosis,A.Status,A.Appointment_Date,A.Appointment_time

   
#### e. Retrieve the room with least number of appointments performed.

select Room_ID, count(Room_ID) as 'room appointments'
from Room_Bookings
group by Room_ID
having count(Room_ID) > 1 ;

#### f. Retrieve list of patients whose age is more than 55 years old.

SELECT * FROM Patients
WHERE Patient_DOB <= DATEADD(YEAR, -55, SYSDATETIME())
ORDER BY Patient_DOB ASC

#### g. Calculate and present Total Hours spent by each doctor on all patients across all periods.

SELECT E.Employee_ID, E.Employee_FirstName, E.Employee_LastName, R.Duration, SUM(R.Duration/60.0) AS 'Total hours'
FROM Employees E, Appointment_Workers AW, Appointments A, Room_Bookings R 
WHERE E.Employee_ID = AW.Employee_ID
AND AW.Appointment_WorkerID = A.Appointment_WorkerID
GROUP BY E.Employee_ID,E.Employee_FirstName, E.Employee_LastName, R.Duration
