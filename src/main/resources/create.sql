CREATE TABLE Caregivers (
    Username varchar(255),
    Salt BINARY(16),
    Hash BINARY(16),
    PRIMARY KEY (Username)
);

CREATE TABLE Availabilities (
    Time date,
    Username varchar(255) REFERENCES Caregivers,
    PRIMARY KEY (Time, Username)
);

CREATE TABLE Vaccines (
    Name varchar(255),
    Doses int,
    PRIMARY KEY (Name)
);

CREATE TABLE Patients (
	Username varchar(255),
    Salt BINARY(16),
    Hash BINARY(16),
    PRIMARY KEY (Username)
);

CREATE TABLE Appointments (
	Appt_ID int IDENTITY (1000, 1),
	Patient varchar(255), 
    Caregiver varchar(255),
    Time date,
    Vaccine varchar(255),
    FOREIGN KEY (Patient) REFERENCES Patients(Username),
    FOREIGN KEY (Caregiver) REFERENCES Caregivers(Username),
    FOREIGN KEY (Vaccine) REFERENCES Vaccines(Name)
);
    
    