INSERT INTO residents (ssn,firstName,middleName,lastName,city,street,apartment,birthdate,contactNumber,gender)
VALUES ('3111203764','Mohammad' ,'Youssef','Azzam','Beirut','Ain Al Mraiseh','7','1996-02-12','81876037','M'),
('3110017318','Dima','Ahmad','Al Hasan','Beirut','Ain Al Mraiseh','9','2000-04-01','81934489','F'),
('3110013541','Tarek','Anas','Rahbani','Beirut','Ain Al Mraiseh','15','2016-08-15','70158123','M'),
('3120126981','Ibrahim','Hasan','Itani','Beirut','Hamra','93','1999-11-12','71124086','M'),
('3120965367','Rana','Jamil','Harb','Beirut','Hamra','41','1934-05-26','78957216','F'),
('3121678247','William','Georges','Saliba','Beirut','Hamra','29','1983-09-18','81158610','M'),
('4710011982','Mona','Suleiman','Khalil','Zahle','Maalaka' ,'19','1998-12-29','78672445','F'),
('4710112436','Andrew','Youssef','Saliba','Zahle','Maalaka' ,'5','1986-11-04','81876255','M'),
('4710076974','Tony','Issa','Takomijian','Zahle','Maalaka' ,'20','2004-05-31','03555558','M'),
('4720182689','Ayman','Jad','Maadaranni','Zahle','Wadi Al Arayech','18','2002-10-19','03124865','M'),
('4720082391','Mansour','Elias','Farah','Zahle','Wadi Al Arayech','14','2000-01-01','03157914','M'),
('4720105890','Fatima','Mahmoud','Wehbi','Zahle','Wadi Al Arayech','74','1971-03-26','71195614','F'),
('7310106362','Ghada','Mostafa','Asaad','Tripoli','Bohssas','12','1994-06-03','78194760','F'),
('7310481702','Ahmad','Salim','Othman','Tripoli','Bohssas','51','1978-05-25','81175691','M'),
('7310812657','Mariam','Saleh','Shaaban','Tripoli','Bohssas','34','1949-02-18','81981765','F'),
('7320219183','Ibrahim','Hamed','Barakat','Tripoli','Mina','26','1998-12-29','71197256','M'),
('7320219348','Tony','Melhem','Rizk','Tripoli','Mina','19','2001-10-19','70124978','M'),
('7310613751','Huda','Sami','Othman','Tripoli','Mina','62','2009-09-18','70192475','F'),
('8610130638','George','Toufik ','Boustany','Tyre','Abbasiyye','14','1987-08-15','03944834','M'),
('8610101238','Ali' ,'Mahmoud','Habash','Tyre','Abbasiyye','11','1999-01-09','70927842','F'),
('8610008641','Rama','Ali','Zaiter','Tyre','Abbasiyye','15','1945-05-26','70124961','F'),
('8620099173','Hadi','Yahya','Taleb','Tyre','Borj El Chamali','67','1968-08-09','71197451','M'),
('8610012387','Sara','Hasan','Shamas','Tyre','Borj El Chamali','47','2006-11-16','81917541','F'),
('8610012865','Rami','Saed','Al Sayyed','Tyre','Borj El Chamali','94','1993-10-15','03715841','M');

INSERT INTO policestation(stationID,city) 
VALUES ('312','Beirut'),
('471','Zahle'),
('733','Tripoli'),
('862','Tyre');

INSERT INTO category(code,name)
VALUES ('235','Drug trafficking'),
('547','Murder'),
('554','Kidnapping'),
('603','Identity Theft'),
('605','Blackmailing'),
('653','Ransomware');

INSERT INTO  policeman (ssn,rssn,stationID,firstName,middleName,lastName,city,street,apartment,joiningDate,salary,contactNumber)
VALUES ('312196531','3111203764','312','Mohammad' ,'Youssef','Azzam','Beirut','Ain Al Mraiseh','7','2019-07-10','1600','81876037'),
('312042345','3121678247','312','William','Georges','Saliba','Beirut','Hamra','29','2004-04-15','2100','81158610'),
('312074327','4710112621','312','Mamdouh','Shamdeen','Araji','Zahle','Maalaka' ,'37','2007-07-11','1100','81762457'),
('471106411','4710112436','471','Andrew','Youssef','Saliba','Zahle','Maalaka' ,'5','2010-10-04','1200','81876255'),
('471191532','4720082391','471','Mansour','Elias','Farah','Zahle','Wadi Al Arayech','14','2019-07-26','1000','03157914'),
('471106432','4710115181','471','Andrew','Yousef','Saliba','Zahle','Maalaka' ,'5','2010-10-12','1500','81876255'),
('733134562','7310106362','733','Ghada','Mostafa','Asaad','Tripoli','Bohssas','12','2013-01-29','1400','78194760'),
('733191987','7320219348','733','Tony','Melhem','Rizk','Tripoli','Mina','19','2019-07-15','800','70124978'),
('733923456','3111201576','733','Hasan','Ali','Hawa','Beirut','Ain Al Mraiseh','63','1992-04-22','1500','71457488'),
('862198126','8610101238','862','Ali' ,'Mahmoud','Habash','Tyre','Abbasiyye','11','2019-07-05','1000','70927842'),
('862136349','8610012865','862','Rami','Saed','Al Sayyed','Tyre','Borj El Chamali','94','2013-01-06','1350','03715841'),
('862136824','3121247890','862','George','Toufik' ,'Boustany','Beirut','Hamra','14','2013-01-08','1600','03944834');

INSERT INTO crimeReport (reportID,pssn,rssn,city,street,apartment,images,description,date,time,status)
VALUES
('3121901271','312196531','4710011982','Beirut','Ain Al Mraiseh','56','/Images/3121901271','Resident 4710011982 (Mona Khalil) reported that she saw 2 corpses filled with blood near her friends house','2019-03-14','23:12','Investigation Closed'),
('3122003718','312042345','3110017318','Beirut','Hamra','9','/Images/3122003718','Resident 3110017318 (Dima Al Hasan) received a message from the bank informing her that 9623$ were deducted from her account due to purchases done at amazon store.','2020-05-24','13:27','Case under Investigation'),
('3122009431','312042345','3120965367','Beirut','Hamra','41','/Images/3122009431','Resident 3120965367 (Rana harb) reported that her daughter is missing since 2 days. ','2020-06-28','09:08','Investigation Closed'),
('4711906530','471106432','4710112436','Zahle','Wadi Al Arayech','20','/Images/4711906530','28kg of Cocaine were caught at Al Masnaa border checkpoint','2019-10-17','23:14','Investigation Pending Outcome'),
('4711906530','471106432','4710112436','Zahle','Wadi Al Arayech','20','/Images/4711906530','28kg of Cocaine were caught at Al Masnaa border checkpoint','2019-10-17','23:14','Investigation Pending Outcome'),
('4711903127','471191532','4720105890','Zahle','Wadi Al Arayech','74','/Images/4711903127','LIU reported a ransomware attack on its database','2019-01-02','07:30','Investigation Closed'),
('7331901387','733134562','7310812657','Tripoli','Mina','34','/Images/7331901387','Mariam Shaaban Reported that her wallet was stolen at the Mina by a 19-year old guy','2019-12-23','19:59','Case under Investigation'),
('7331902764','733191987','7310481702','Tripoli','Mina','26','/Images/7331902764','An armed robbery at the house of citizen I.B. which led to his death when resisting the thieves.','2019-05-09','05:19','Investigation Pending Outcome'),
('7331904857','733923456','7310481702','Tripoli','Bohssas','34','/Images/7331904857','Resident 7310481702 (Ahmad Othman) reported that resident 7310812657 (Mariam Shaaban) was murdered by one of her relatives.','2019-02-13','23:51','Investigation Closed'),
('7332006125','733923456','8610012865','Tripoli','Bohssas','94','/Images/7332006125','Resident 8610012865 (Rami Al Sayyed) reported that all his files were locked and 1000$ are required by the hacker to unlock his files','2020-12-29','17:38','Case under Investigation'),
('8622001255','862198126','8610130638','Tyre','Abbasiyye','23','/Images/8622001255','Resident 8610130638 (George Boustany) received an email threatening him by exposing his companys sensitive information if he does not pay 50000$ within 24h','2019-12-06','12:00','Investigation Pending Outcome');

INSERT INTO responseAction(responseID,pssn,name,time,date,description,target,status)
VALUES 
('31261689','312196531','Mohammad Azzam','14:50','2019-04-19','The criminal was arrested','3121901271','Investigation Closed'),
('31296419','312042345','William Saliba','20:14','2020-07-30','Tracking hacker to capture him','3122003718','Case under Investigation'),
('31219642','312042345','William Saliba','09:50','2020-07-05','The police came right away and After searching and checking,the criminal was found','3122009431','Investigation Closed'),
('47118461','471106432','Mansour Farah','04:26','2020-12-20','The police came right away and took the necessary measures','4711906530','Investigation Pending Outcome'),
('47106415','471191532','Andrew Saliba','12:47','2019-08-14','Hacker appeared to be a student, he was handed over to the police','4711903127','Investigation Closed'),
('73305314','733134562','Ghada Asaad','07:59','2020-06-30','The police came and started the investigation','7331901387','Case under Investigation'),
('73305414','733191987','Tony Rizk','10:47','2021-06-06','After searching and checking,the criminal was found','7331902764','Investigation Pending Outcome'),
('73391541','733923456','Hasan Hawa','02:22','2019-02-14','The killer turned himself in after confronting the police for half an hour','7331904857','Investigation Closed'),
('73304825','733923456','Hasan Hawa','18:39','2021-09-19','Hacker Group is being tracked','7332006125','Case under Investigation'),
('86217544','862198126','Ali Habash','14:19','2020-12-03','3 suspects found, gathering more intel to identify the criminal','8622001255','Investigation Pending Outcome');

INSERT INTO crime(reportID,categoryCode,degAffection)
VALUES
('7331902764','201','2 corpses'),
('7331901387','201','Dima Al Hasan visacard is being used by someone else'),
('4711906530','235','Psychological problems for the victim'),
('3121901271','547','Some students data was lost'),
('3122009431','554','Passport, ID, and money robbed'),
('3122003718','603','Broken windows, 1 corpse, 58679$ robbed'),
('8622001255','605','1 corpse'),
('4711903127','653','All files lost'),
('7332006125','653','companys data was exposed');




