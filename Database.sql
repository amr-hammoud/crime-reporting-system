CREATE DATABASE Crime_Reporting_System;

CREATE TABLE residents(
	ssn				int,
	firstName		varchar(20)			NOT NULL,
	middleName		varchar(20)			NOT NULL,
	lastName		varchar(20)			NOT NULL,
	city			varchar(25)			NOT NULL,
	street			varchar(25),
	apartment		varchar(25),
	birthdate		date,
	contactNumber	int					NOT NULL,
	gender			char(1),
	PRIMARY KEY(ssn));
	

CREATE TABLE policeStation(
	stationID		int,
	city			varchar(25)			NOT NULL,
	PRIMARY KEY(stationID));
	
CREATE TABLE category(
	code			int,
	name			varchar(30)			NOT NULL,
	PRIMARY KEY(code));
	
CREATE TABLE policeman(
	ssn				int,
	rssn			int,
	stationID		int					NOT NULL,
	firstName		varchar(20)			NOT NULL,
	middleName		varchar(20)			NOT NULL,
	lastName		varchar(20)			NOT NULL,
	city			varchar(25)			NOT NULL,
	street			varchar(25),
	apartment		varchar(25),
	joiningDate		date,
	salary			int,
	contactNumber	int					NOT NULL,
	PRIMARY KEY (ssn));
	
CREATE TABLE crimeReport(
	reportID		int,
	pssn			int					NOT NULL,
	rssn			int					NOT NULL,
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
	responseID		int,
	pssn			int					NOT NULL,
	name			varchar(40),
	time			time				NOT NULL,
	date			date				NOT NULL,
	description		varchar				NOT NULL,
	target			int					NOT NULL,
	status			varchar,
	PRIMARY KEY (responseID));
	
CREATE TABLE crime(
	reportID		int					NOT NULL,
	categoryCode	int					NOT NULL,
	deg_affection	varchar);

--Foreign Keys
ALTER TABLE policeman ADD FOREIGN KEY (stationID) REFERENCES policeStation(stationID) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE crimeReport ADD FOREIGN KEY (pssn) REFERENCES policeman(ssn) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE crimeReport ADD FOREIGN KEY (rssn) REFERENCES residents(ssn) ON DELETE CASCADE ON UPDATE CASCADE;	
	
ALTER TABLE responseAction ADD FOREIGN KEY (pssn) REFERENCES policeman(ssn) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE responseAction ADD FOREIGN KEY (target) REFERENCES crimeReport(reportID);


ALTER TABLE crime ADD FOREIGN KEY (reportID) REFERENCES crimeReport(reportID) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE crime ADD FOREIGN KEY (categoryCode) REFERENCES category(code) ON DELETE CASCADE ON UPDATE CASCADE;