CREATE TABLE Employee_Types(
Employee_TypeID INT NOT NULL,
TypeName VARCHAR(20),
PRIMARY KEY (Employee_TypeID)
);
/* Employee type description per employee in the clinic. */
CREATE TABLE Employees(
Employee_ID INT NOT NULL,
Employee_FirstName VARCHAR(20),
Employee_LastName VARCHAR(20),
Employee_TypeID INT,
IsAvailable VARCHAR(10),
PRIMARY KEY (Employee_ID),
FOREIGN KEY (Employee_TypeID) REFERENCES Employee_Types (Employee_TypeID)
);
/* Employee table where we reference the EMPLOYEE_TYPES Table. */
CREATE TABLE Patients(
Patient_ID INT NOT NULL,
Personal_ID INT,
Patient_FirstName VARCHAR(20),
Patient_LastName VARCHAR(20),
Patient_DOB DATE,
City VARCHAR(20),
ZipCode INT,
Phone INT,
Email VARCHAR(100),
Remarks VARCHAR(200),
Street VARCHAR(100),
PRIMARY KEY (Patient_ID)
);
/* Pasients table contains all the information needed for further examination and treatment */
CREATE TABLE Rooms(
Room_ID INT NOT NULL,
RoomName VARCHAR(10),
PRIMARY KEY (Room_ID)
);
/* This table contains the Rooms ( Room A - Room G) */
CREATE TABLE Room_Breaks(
Room_BreakID INT NOT NULL,
Room_ID INT,
Schedule VARCHAR(100),
PRIMARY KEY (Room_BreakID),
FOREIGN KEY (Room_ID) REFERENCES Rooms (Room_ID)
);
/* Room break schedule */
CREATE TABLE Room_Bookings(
RoomBooking_ID INT NOT NULL,
Room_ID INT,
Patient_ID INT,
Duration FLOAT,
Status VARCHAR(20),
DateStart DATE,
DateEnd DATE,
PRIMARY KEY (RoomBooking_ID),
FOREIGN KEY (Room_ID) REFERENCES Rooms (Room_ID),
FOREIGN KEY (Patient_ID) REFERENCES Patients (Patient_ID)
);
/* This contains the info of the booking of a room per appointment. */
CREATE TABLE Appointment_Workers(
Appointment_WorkerID INT NOT NULL,
Appointment_ID INT,
Employee_ID INT,
PRIMARY KEY (Appointment_WorkerID),
FOREIGN KEY (Employee_ID) REFERENCES Employees (Employee_ID)
);
/* Employee is assigned to an appointment */
CREATE TABLE Treatments(
Treatment_ID INT NOT NULL,
Treatment VARCHAR(200),
Price NUMERIC (8,2),
PRIMARY KEY (Treatment_ID)
);
/* This is the list of treatments that is offered to the Patient_treatments table */
CREATE TABLE Patient_Treatments(
PatientTreatment_ID INT NOT NULL,
Treatment_ID INT,
Patient_ID INT,
PRIMARY KEY (PatientTreatment_ID),
FOREIGN KEY (Treatment_ID) REFERENCES Treatments (Treatment_ID),
FOREIGN KEY (Patient_ID) REFERENCES Patients (Patient_ID)
);
/* This is where the Employee assign a treatment to a patient. */
CREATE TABLE Appointments(
Appointment_ID INT NOT NULL,
Patient_ID INT,
Appointment_WorkerID INT,
RoomBooking_ID INT,
PatientTreatment_ID INT,
Price NUMERIC(8,2),
Diagnosis VARCHAR(200),
Status VARCHAR(20),
Appointment_Date DATE,
Appointment_time VARCHAR(10),
Next_Appointment VARCHAR(10),
PRIMARY KEY (Appointment_ID),
FOREIGN KEY (Patient_ID) REFERENCES Patients (Patient_ID),
FOREIGN KEY (PatientTreatment_ID) REFERENCES Patient_Treatments (PatientTreatment_ID),
FOREIGN KEY (Appointment_WorkerID) REFERENCES Appointment_Workers (Appointment_WorkerID),
FOREIGN KEY (RoomBooking_ID) REFERENCES Room_Bookings (RoomBooking_ID)
);
/* This contains the actual appointment of the patient that could contain multiple employees in the same appointment */
CREATE TABLE Payment(
Payment_ID INT NOT NULL,
PatientTreatment_ID INT,
Treatment_ID INT,
Appointment_WorkerID INT,
Payment_Method VARCHAR(25),
Payment_Date DATE,
Employee_ID INT,
Total DECIMAL (10, 2),
PRIMARY KEY (Payment_ID),
FOREIGN KEY (PatientTreatment_ID) REFERENCES Patient_Treatments (PatientTreatment_ID),
FOREIGN KEY (Treatment_ID) REFERENCES Treatments (Treatment_ID),
FOREIGN KEY (Employee_ID) REFERENCES Employees (Employee_ID)
);
/* This contains payment information of the performed treatment to the patient. */
