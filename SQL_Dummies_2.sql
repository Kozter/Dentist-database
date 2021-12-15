INSERT INTO dbo.Employee_Types
(Employee_TypeID, TypeName)
VALUES 
(1, 'Receptionist'),(2, 'Receptionist'),(3, 'Receptionist'),(4, 'Senior dentist'),(5,'Senior dentist'),(6,'Senior dentist'),(7,'Senior dentist'),(8,'Senior dentist'),(9,'Senior dentist'),(10,'Senior dentist'),(11,'Senior dentist'),(12,'Senior dentist'),(13,'Trainee dentist'),(14,'Trainee dentist'),(15,'Trainee dentist'),(16,'Trainee dentist'),(17,'Trainee dentist'),(18,'Trainee dentist'),(19,'Trainee dentist'),(20,'Trainee dentist'),(21,'Trainee dentist'),(22,'Trainee dentist'),(23,'Hygienist'),(24,'Hygienist'),(25,'Hygienist'),(26,'Hygienist'),(27,'Dental Assistant'),(28,'Dental Assistant'),(29,'Office manager'),(30,'Billing Specialist'),(31, 'Cleaner');
/* dbo.Employee_Types INSERT dummy data */




INSERT INTO dbo.Employees
(Employee_ID,Employee_FirstName,Employee_LastName,Employee_TypeID,IsAvailable)
VALUES 
(1,'Prisca', 'Duignan', 1, 'yes'),(2,'Flynn', 'Battlestone', 2, 'no'),(3,'Hana', 'Hailes', 3, 'no'),(4,'Aeriell', 'Crowhurst', 4, 'no'),(5,'Wheeler', 'Gaenor',5, 'yes'),(6,'Korney', 'Andrez',6, 'yes'),(7,'Stanley', 'Owttrim',7, 'no'),(8,'Barbe', 'Boraston',8, 'yes'),(9,'Bealle', 'Gregorin',9,'yes'),(10,'Orion', 'Mertin',10, 'no'),(11,'Giacopo', 'Halliburton',11,'no'),(12,'Netty', 'Cheesworth',12, 'no'),(13,'Pam', 'Pagett',13, 'no'),(14,'Danica', 'Greenan',14, 'no'),(15,'Elset', 'Jeanel',15, 'yes'),(16,'Cacilia', 'MacCallum',16,'no'),(17,'Aleece', 'Langwade',17,'no'),(18,'Dorice', 'Dawbury',18,'yes'),(19,'Wells', 'Steggals',19,'no'),(20,'Beth', 'I''anson',20,'yes'),(21,'Esmaria', 'Walaron',21,'yes'),(22,'Meta', 'Chesswas',22,'yes'),(23,'Amie', 'Van der Hoeven',23,'no'),(24,'Durante', 'Haysar',24,'yes'),(25,'Chase', 'De Ferraris',25,'no'),(26,'Bartholomeus', 'Vigers',26,'yes'),(27,'Rudolph', 'Goodbur',27,'yes'),(28,'Denni', 'Dybell',28,'no'),(29,'Hamnet', 'Batcheldor',29,'yes'),(30,'Carter', 'Sommersett',30,'yes'),(31,'Billie', 'Beaumont',31,'yes');
/* dbo.Employees INSERT dummy data */
INSERT INTO dbo.Patients
(Patient_ID,Personal_ID,Patient_FirstName,Patient_LastName,Patient_DOB,City,ZipCode,Phone,Email,Remarks,Street)
VALUES 
(1,49197, 'Lily','Bakken','1970-07-16','PORSGRUNN',3911,97374105,'Li.B@jourrapide.com', 'dental care','Utsikten 57'),(2,49006, 'Martin','Sveen','1973-02-14','LARVIK',3269,93421214, 'MartinSveen@rhyta.com', 'tooth cleaning','Dronning Gydas vei 138'),(3,48999, 'Sigurd','Groven','1989-09-29','FREI',6523,97539700, 'SigurdGroven@rhyta.com', 'dental examination','Gullkystveien 174'),(4,48808, 'Viljar','Sund','1943-02-10','SANDEFJORD',3216,48057042, 'ViljarSund@jourrapide.com', 'dental filling','Liveien 227'),(5,48727, 'Leander','Holm','1939-07-16','TORP',1659,45161941, 'LeanderHolm@dayrep.com', 'tooth cleaning','Almveien 234'),(6,48646, 'Iver','Nikolaisen','1945-02-12','TRONDHEIM',7030,97345235, 'IverNikolaisen@jourrapide.com', 'tooth cleaning','Edvard Griegs gate 243'),(7,48565, 'Emma','Toft','1958-11-15','KONGSVINGER',2212,44107934, 'EmmaToft@dayrep.com', 'tooth cleaning','Haakons veg 198'),(8,48484, 'Kaja','Lundby','2001-12-01','LILLEHAMMER',2608,42169633, 'KajaLundby@jourrapide.com', 'dental filling','Hågåvegen 99'),(9,48212, 'Adrian','Østby','1954-04-26','SANDEFJORD',3230,95128762, 'AdrianOstby@armyspy.com', 'tooth cleaning','Seilerholmen 224'),(10,48131, 'Theo','Herland','1970-11-19','SKIEN',3715,95374600, 'TheoHerland@jourrapide.com', 'dental examination','Hans Houens gate 226'),(11,48050, 'Maiken','Halvorsen','1947-05-20','TISTEDAL',1792,95457998, 'MaikenHalvorsen@rhyta.com', 'tooth cleaning','Fosseløkka 36'),(12,47933, 'Adrian','Jørgensen','1970-07-16','STAVANGER',4021,95724336, 'AdrianJorgensen@rhyta.com', 'tooth cleaning','Pollux gate 106'),(13,47852, 'Aleksander','Fossum','1990-02-02','FREDRIKSTAD',1613,42904729, 'AleksanderFossum@dayrep.com', 'tooth cleaning','Lundestadtoppen 49'),(14,47771, 'Madeleine','Myking','1962-09-05','Oslo',0489,99473055, 'MadeleineMyking@teleworm.us', 'dental filling','Glads vei 72'),(15,47690, 'Sofia','Høiland','1957-05-21','HARSTAD',9407,97379437, 'SofiaHoiland@rhyta.com', 'tooth cleaning','Landsåsveien 221'),(16,47429, 'Aksel','Nilsen','1989-04-19','TRONDHEIM',7020,43098249, 'AkselNilsen@jourrapide.com', 'tooth cleaning','Mogstads vei 46'),(17,47348, 'Victoria','Eckhoff','1972-10-12','BODØ',8014,45038363, 'VictoriaEckhoff@armyspy.com', 'dental examination','Holtan 118'),(18,47267, 'Yasmin','Roland','1979-03-10','GJØVIK',2817,42372070, 'YasminRoland@teleworm.us', 'tooth cleaning','Tunstien 111'),(19,47186, 'Elida','Nilsen','1996-01-23','OSLO',0963,92863725, 'ElidaNilsen@teleworm.us', 'dental examination','Hagaløkka 245'),(20,46988, 'Isabell','Hernes','1952-04-18','OSLO',0979,98642600, 'IsabellHernes@jourrapide.com', 'tooth cleaning','Stigenga 16');
/* dbo.Patients INSERT dummy data */
INSERT INTO dbo.Rooms
(Room_ID,RoomName)
VALUES
(1,'A'),(2,'B'),(3,'C'),(4,'D'),(5,'E'),(6,'F'),(7,'G');
/* dbo.Rooms INSERT dummy data */
INSERT INTO dbo.Room_Breaks
(Room_BreakID,Room_ID,Schedule)
VALUES
(1, 1,'10:30-10:45'),(2,2,'12:15-13:00'),(3, 3,'14:30-14:45');
/* dbo.Room_Breaks INSERT dummy data */
INSERT INTO dbo.Room_Bookings
(RoomBooking_ID,Room_ID,Patient_ID,Duration,Status,DateStart,DateEnd)
VALUES
(1,1,10,'00:30','Occupied','2021-01-10','2021-01-10'),(2,3,7,'00:30','Occupied','2021-01-10','2021-01-10'),(3,6,3,'00:30','Occupied','2021-01-10','2021-01-10'),(4,2,6,'01:15','Occupied','2021-01-10','2021-01-14'),(5,4,15,'00:55','Occupied','2021-01-10','2021-01-10'),(6,5,4,'00:45','Occupied','2021-01-10','2021-01-10'),(7,7,2,'00:30','Occupied','2021-01-11','2021-01-11'),(8,2,20,'00:30','Occupied','2021-01-11','2021-01-14'),(9,4,19,'00:30','Occupied','2021-01-11','2021-01-11'),(10,6,1,'00:30','Occupied','2021-01-11','2021-01-11'),(11,1,11,'00:30','Occupied','2021-01-11','2021-01-11'),(12,3,12,'00:45','Occupied','2021-01-12','2021-01-12'),(13,5,17,'00:30','Occupied','2021-01-12','2021-01-12'),(14,7,14,'00:34','Occupied','2021-01-12','2021-01-14'),(15,6,5,'00:35','Occupied','2021-01-12','2021-01-12'),(16,3,16,'00:30','Occupied','2021-01-13','2021-01-13'),(17,1,13,'00:38','Occupied','2021-01-13','2021-01-13'),(18,2,18,'00:30','Occupied','2021-01-13','2021-01-13'),(19,4,9,'01:05','Occupied','2021-01-13','2021-01-13'),(20,5,8,'00:30','Occupied','2021-01-13','2021-01-13');
/* dbo.Room_Bookings INSERT dummy data */






INSERT INTO dbo.Appointment_Workers
(Appointment_WorkerID,Appointment_ID,Employee_ID)
VALUES
(1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20),(21,21,21),(22,22,22),(23,23,23),(24,24,24),(25,25,25),(26,26,26),(27,27,27),(28,28,28),(29,29,29),(30,30,30),(31,31,31);
/* dbo.Appointment_Workers INSERT dummy data */
INSERT INTO dbo.Treatments
(Treatment_ID,Treatment,Price)
VALUES
(1,'dental examination',800),(2,'crowns',3000),(3,'dental filling',1500),(4,'root canal treatment',2000),(5,'scale and polish',1250),(6,'braces',12000),(7,'wisdom tooth removal',1250),(8,'dental care',1000),(9,'dentures or false teeth', 3500),(10,'tooth cleaning',750);
/* dbo.Treatments INSERT dummy data */
INSERT INTO dbo.Patient_Treatments
(PatientTreatment_ID,Treatment_ID,Patient_ID)
VALUES
(1,8,4),(2,10,20),(3,1,13),(4,3,8),(5,10,1),(6,10,7),(7,10,15),(8,3,12),(9,10,9),(10,1,17),(11,10,11),(12,10,2),(13,10,16),(14,3,5),(15,10,19),(16,10,3),(17,1,18),(18,10,14),(19,1,6),(20,10,10);
/* dbo.Patient_Treatments INSERT dummy data */
INSERT INTO dbo.Appointments
(Appointment_ID,Patient_ID,Appointment_WorkerID,RoomBooking_ID,PatientTreatment_ID,Price,Diagnosis,Status,Appointment_Date,Appointment_time,Next_Appointment)
VALUES
(1,10,13,1,1,1000,'dental care','healthy','2021-01-10','09:00','null'),(2,20,23,2,2,750,'tooth cleaning','healthy','2021-01-10','09:00','null'),(3,13,5,3,3,800,'dental examination','healthy','2021-01-10','10:00','null'),(4,8,6,4,4,1500,'dental filling','cavity','2021-01-10','09:15','2021-01-14'),(5,16,25,5,5,750,'tooth cleaning','healthy','2021-01-10','10:45','null'),(6,1,26,6,6,750,'tooth cleaning','healthy','2021-01-10','13:00','null'),(7,4,4,7,7,750,'tooth cleaning','healthy','2021-01-11','09:00','null'),(8,15,6,8,8,1500,'dental filling','cavity','2021-01-11','09:20','2021-01-14'),(9,12,10,9,9,750,'tooth cleaning','healthy','2021-01-11','10:20','null'),(10,9,6,10,10,800,'dental examination','healthy','2021-01-11','11:00','null'),(11,17,13,11,11,750,'tooth cleaning','healthy','2021-01-11','13:00','null'),(12,11,22,12,12,750,'tooth cleaning','healthy','2021-01-11','14:50','null'),(13,2,7,13,13,750,'tooth cleaning','healthy','2021-01-12','09:00','null'),(14,6,12,14,14,1500,'dental filling','cavity','2021-01-12','09:45','2021-01-14'),(15,5,9,15,15,750,'tooth cleaning','healthy','2021-01-12','11:00','null'),(16,19,15,16,16,750,'tooth cleaning','healthy','2021-01-13','13:00','null'),(17,3,6,17,17,800,'dental examination','healthy','2021-01-13','14:45','null'),(18,18,20,18,18,750,'tooth cleaning','healthy','2021-01-13','14:00','null'),(19,14,8,19,19,800,'dental examination','healthy','2021-01-13','15:00','null'),(20,7,23,20,20,750,'tooth cleaning','healthy','2021-01-13','15:45','null');
/* dbo.Appointments INSERT dummy data */


INSERT INTO dbo.Payment
(Payment_ID,PatientTreatment_ID,Treatment_ID,Appointment_WorkerID,Payment_Method,Payment_Date,Employee_ID,Total)
VALUES
(1,1,8,1,'credit card', '2021-01-10',1,1000),(2,2,10,1,'credit card', '2021-01-10',1,750),(3,3,1,1,'credit card', '2021-01-10',1,800),(4,4,3,1,'cash', '2021-01-10',1,1500),(5,5,10,1,'credit card', '2021-01-10',1,750),(6,6,10,1,'credit card', '2021-01-10',1,750),(7,7,10,1,'credit card', '2021-01-11',1,750),(8,8,3,1,'cash', '2021-01-11',1,1500),(9,9,10,1,'credit card', '2021-01-11',1,750),(10,10,1,1,'credit card', '2021-01-11',1,800),(11,11,10,1,'cash', '2021-01-11',1,750),(12,12,10,2,'credit card', '2021-01-11',1,750),(13,13,10,2,'credit card', '2021-01-12',1,750),(14,14,3,2,'credit card', '2021-01-12',1,1500),(15,15,10,2,'cash', '2021-01-12',1,750),(16,16,10,2,'cash', '2021-01-12',1,750),(17,17,1,3,'credit card', '2021-01-13',1,800),(18,18,10,3,'credit card', '2021-01-13',1,750),(19,19,1,3,'credit card', '2021-01-13',1,800),(20,20,10,3,'credit card', '2021-01-13',1,750);
/* dbo.Payment INSERT dummy data */
