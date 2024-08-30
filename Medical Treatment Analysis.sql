CREATE DATABASE MedTreatmentDW
USE MedTreatmentDW 

CREATE TABLE DIMTime (TimeID INT PRIMARY KEY NOT NULL , Year date , Day date , Hour time) ;
CREATE TABLE DIMTreatment (TreatmentID INT PRIMARY KEY NOT NULL , TreatmentDescr VARCHAR (100) );
CREATE TABLE DIMPatient (PatientID INT PRIMARY KEY NOT NULL , TreatmentID INT FOREIGN KEY REFERENCES DIMTreatment, 
Name VARCHAR (100) NOT NULL, Phone INT, Address VARCHAR (100) ) ;

CREATE TABLE DIMDoctor (DoctorID INT PRIMARY KEY NOT NULL, DocName VARCHAR (100) , Phone INT , Address VARCHAR(100) );
CREATE TABLE FACMedicalTreatment (TimeID INT FOREIGN  KEY REFERENCES DIMTime , PatientID INT FOREIGN KEY REFERENCES DIMPatient,
                                  DoctorID INT FOREIGN KEY REFERENCES DIMDoctor , TreatmentCount INT , Cost MONEY,
								  EffictivenessScore INT);