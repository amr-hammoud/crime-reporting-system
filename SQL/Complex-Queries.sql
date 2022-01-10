--Complex Query 1 / Retrieve the ssn and names of residents who have not reported a crime.
SELECT 	ssn,firstName, middleName, lastName
FROM 	residents
WHERE 	NOT EXISTS
	(SELECT * FROM crimeReport WHERE SSN=RSSN)


--Complex Query 2 / Names of residents who are policemen
SELECT firstName,lastname
FROM residents
INTERSECT
SELECT firstName,lastName
FROM policeman;


--Complex Query 3 / Names of policemen who didn't make a response Action
SELECT firstName,lastName
FROM policeman
WHERE ssn IN (SELECT ssn
		FROM policeman
		EXCEPT
		SELECT pssn
		FROM responseAction);


--Complex Query 4 / ID and Names of policemen who recieved a crime Report
SELECT DISTINCT ssn,firstName,lastName
FROM policeman
RIGHT JOIN crimeReport
ON policeman.ssn=crimeReport.pssn;


--Complex Query 5 / 
SELECT reportID,city,description
FROM crimeReport
WHERE date LIKE '2019-05-%'
UNION
SELECT reportID,city,description
FROM crimeReport
WHERE date LIKE '2020-05-%'





