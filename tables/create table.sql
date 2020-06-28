CREATE TABLE Contractor(
 salary NUMERIC(30) NOT NULL,
Gender VARCHAR(100) NOT NULL,
CID VARCHAR(100) NOT NULL,
contractorName VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL,
companyName VARCHAR(100) NOT NULL,
age NUMERIC(30) NOT NULL,
phoneNumberC VARCHAR(100) NOT NULL,
PRIMARY KEY (CID) 
);
CREATE TABLE ConstructionProject(
projectName VARCHAR(100) NOT NULL,
PiD VARCHAR(100) NOT NULL,
startDate DATE NOT NULL,
finishDate DATE NOT NULL,
CID VARCHAR(100) NOT NULL,
PRIMARY KEY (PiD),
FOREIGN KEY (CID) REFERENCES Contractor(CID) 
);
CREATE TABLE Area(
AreaName VARCHAR(100) NOT NULL,
AreaId VARCHAR(100) NOT NULL,
PRIMARY KEY (AreaId)
 );
CREATE TABLE projectIn(
PiD VARCHAR(100) NOT NULL,
AreaId VARCHAR(100) NOT NULL,
PRIMARY KEY (PiD, AreaId),
FOREIGN KEY (PiD) REFERENCES ConstructionProject(PiD),
FOREIGN KEY (AreaId) REFERENCES Area(AreaId)
 );
CREATE TABLE Worker(
workerName VARCHAR(100) NOT NULL,
WID VARCHAR(100) NOT NULL,
Gender VARCHAR(100) NOT NULL,
YearsOfWork NUMERIC(30) NOT NULL,
email VARCHAR(100) NOT NULL,
age NUMERIC(30) NOT NULL,
phoneNumberw VARCHAR(100) NOT NULL,
CID VARCHAR(100) NOT NULL,
PRIMARY KEY (WID),
FOREIGN KEY (CID) REFERENCES Contractor(CID) 
); 
