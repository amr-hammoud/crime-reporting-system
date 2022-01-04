CREATE DATABASE Crime_Reporting_System;

CREATE TABLE residents(
	ssn				char(10),
	firstName		varchar(20)			NOT NULL,
	middleName		varchar(20)			NOT NULL,
	lastName		varchar(20)			NOT NULL,
	city			varchar(25)			NOT NULL,
	street			varchar(25),
	apartment		int,
	birthdate		date,
	contactNumber	int					NOT NULL,
	gender			char(1),
	PRIMARY KEY(ssn));
	

CREATE TABLE policeStation(
	stationID		char(3),
	city			varchar(25)			NOT NULL,
	PRIMARY KEY(stationID));
	
CREATE TABLE category(
	code			char(3),
	name			varchar(30)			NOT NULL,
	PRIMARY KEY(code));
	
CREATE TABLE policeman(
	ssn				char(9),
	rssn			char(10),
	stationID		char(3)				NOT NULL,
	firstName		varchar(20)			NOT NULL,
	middleName		varchar(20)			NOT NULL,
	lastName		varchar(20)			NOT NULL,
	city			varchar(25)			NOT NULL,
	street			varchar(25),
	apartment		int,
	joiningDate		date,
	salary			int,
	contactNumber	int					NOT NULL,
	PRIMARY KEY (ssn));
	
CREATE TABLE crimeReport(
	reportID		char(10),
	pssn			char(9)				NOT NULL,
	rssn			char(10)			NOT NULL,
	city			varchar(25)			NOT NULL,
	street			varchar(25),
	apartment		int,
	images			varchar,
	description		varchar				NOT NULL,
	date			date  				NOT NULL,
	time			time 				NOT NULL,
	status			varchar				NOT NULL,
	PRIMARY KEY (reportID));

CREATE TABLE responseAction(
	responseID		char(8),
	pssn			char(9)				NOT NULL,
	name			varchar(40),
	time			time				NOT NULL,
	date			date				NOT NULL,
	description		varchar				NOT NULL,
	target			char(10)			NOT NULL,
	status			varchar,
	PRIMARY KEY (responseID));
	
CREATE TABLE crime(
	reportID		char(10)			NOT NULL,
	categoryCode	char(3)				NOT NULL,
	deg_affection	varchar);

--Foreign Keys
ALTER TABLE policeman ADD FOREIGN KEY (stationID) REFERENCES policeStation(stationID) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE crimeReport ADD FOREIGN KEY (pssn) REFERENCES policeman(ssn) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE crimeReport ADD FOREIGN KEY (rssn) REFERENCES residents(ssn) ON DELETE CASCADE ON UPDATE CASCADE;	
	
ALTER TABLE responseAction ADD FOREIGN KEY (pssn) REFERENCES policeman(ssn) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE responseAction ADD FOREIGN KEY (target) REFERENCES crimeReport(reportID);


ALTER TABLE crime ADD FOREIGN KEY (reportID) REFERENCES crimeReport(reportID) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE crime ADD FOREIGN KEY (categoryCode) REFERENCES category(code) ON DELETE CASCADE ON UPDATE CASCADE;
