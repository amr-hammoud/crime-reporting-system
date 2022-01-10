--Step 5.1) Insert a new Category having the following info: code is 314, name is Social Security Threat 
INSERT INTO category (code,name)
VALUES ('314','Social Security Threat')


--Step 5.2) Update the name of the policeman whose ssn is 312074327
UPDATE policeman
SET firstName='Ahmad',middleName='Yahya',lastName='Saleh'
WHERE ssn='312074327';


--Step 5.3) List the names of residents in Beirut City
SELECT firstName,middleName,lastName
FROM residents
WHERE city='Beirut';


--Step 5.4) List the name of policemen who joined after 1/1/2019 ordered alphabetically
SELECT firstName,middleName,lastName
FROM policeman
WHERE joiningDate >= '2019-01-01'
ORDER BY firstName,middleName ASC;


--Step 5.5) List the ID and status of the crimes reported to the Policeman named “William Saliba”
SELECT DISTINCT crimeID,status
FROM crime,crimeReport,policeman
WHERE crime.reportID=crimeReport.reportID AND crimeReport.pssn=policeman.ssn AND policeman.firstName='William' AND policeman.lastName='Saliba';


--Step 5.6) List the number of pending crimes
SELECT COUNT(reportID)
FROM crimeReport
WHERE status ='Case under Investigation' OR status ='Investigation Pending Outcome';



--Step 5.7) The ID of crimes that were reported to “Ghada Asaad” or had an action done by “Ghada Asaad”
SELECT crimeID
FROM crime,crimeReport,policeman,responseAction
WHERE crime.reportID=crimeReport.reportID
AND crimeReport.pssn=policeman.ssn
AND crimeReport.pssn=responseAction.pssn
AND policeman.firstName='Ghada'
AND policeman.lastName='Asaad';


--Step 5.8) The total number of crimes in each city
SELECT city,COUNT(crimeID)
FROM crimeReport,crime
WHERE crime.reportID=crimeReport.reportID
GROUP BY city;


--Step 5.9) The name of residents who have reported more than two crimes
SELECT firstName,lastName,COUNT(*) 
FROM residents,crimeReport,crime
WHERE residents.ssn=crimeReport.rssn AND crime.reportID=crimeReport.reportID	
GROUP BY firstName,lastName
HAVING COUNT(*)>2;


--Step 5.10) The number of responses for each crime witnessed today
SELECT COUNT(*)
FROM responseAction
GROUP BY date
HAVING date='2021-09-19';


--Step 5.11) The number of crimes in each category
SELECT name,COUNT(categoryCode)
FROM category,crime
WHERE category.code=crime.categoryCode
GROUP BY categoryCode,name;


--Step 5.12) The ID of crimes
SELECT crimeID
From crime;
