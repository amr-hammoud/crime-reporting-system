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
	code			varchar(10),
	name			varchar(30)			NOT NULL,
	PRIMARY KEY(code));
	
CREATE TABLE policeman(
	ssn				int,
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
	apartment		varchar(25),
	images			varchar,
	cdescription	varchar				NOT NULL,
	cdate			date  				NOT NULL,
	ctime			time 				NOT NULL,
	cstatus			varchar(15)			NOT NULL,
	PRIMARY KEY (reportID));

CREATE TABLE responseAction(
	responseID		int,
	pssn			int,
	name			varchar(15),
	rtime			time				NOT NULL,
	rdate			date				NOT NULL,
	rdescription	varchar				NOT NULL,
	rtarget			int					NOT NULL,
	rstatus			varchar(15),
	PRIMARY KEY (responseID));
	
CREATE TABLE crime(
	reportID		int,
	categoryCode	varchar(10),
	deg_affection	int);

--Foreign Keys
ALTER TABLE policeman ADD FOREIGN KEY (stationID) REFERENCES policeStation(stationID) ON UPDATE CASCADE;

ALTER TABLE crimeReport ADD FOREIGN KEY (pssn) REFERENCES policeman(ssn) ON UPDATE CASCADE;
ALTER TABLE crimeReport ADD FOREIGN KEY (rssn) REFERENCES residents(ssn) ON UPDATE CASCADE;	
	
ALTER TABLE responseAction ADD FOREIGN KEY (pssn) REFERENCES policeman(ssn) ON UPDATE CASCADE;
ALTER TABLE responseAction ADD FOREIGN KEY	(rtarget) REFERENCES crimeReport(reportID) ON DELETE SET DEFAULT ON UPDATE CASCADE;

ALTER TABLE crime ADD FOREIGN KEY	(reportID) REFERENCES crimeReport(reportID) ON UPDATE CASCADE;
ALTER TABLE crime ADD FOREIGN KEY (categoryCode) REFERENCES category(code) ON UPDATE CASCADE;
