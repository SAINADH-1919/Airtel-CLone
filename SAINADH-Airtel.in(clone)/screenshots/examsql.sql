-- 1 create database by name crickter_Management

CREATE DATABASE Crickter_Management;

-- 2 draw Er diagram represented cricketerr base management system with minimum of 5 entities and minum of 4 attributs for each entity



-- 3 create a table by name cricketer which has following columns 

id INT notnull PRIMARY KEY,
NAME varhachar(100) NOT NULL,
icc_id INT NOT NULL UNIQUE KEY
icc_id  country VARCHAR(100) NOT NULL
runs INT
wickets INT,
catches INT,
matches INT,

CREATE TABLE cricketer(
id INT NOT NULL PRIMARY KEY,
NAME VARCHAR(100) NOT NULL,
icc_id INT NOT NULL UNIQUE KEY,
icc_id_country VARCHAR(100) NOT NULL,
Runs INT,
wickets INT,
Catches INT,
Matches INT);



-- 4 write a query to add the below mention columns into the cricketer database table 

average FLOAT AFTER wickets ,
MON INT ,
man_of_the_series INT,



ALTER TABLE cricketer
ADD avge FLOAT AFTER wickets,
ADD MON INT ,
ADD man_of_the_series INT;

-- 5 write a query to modify following

ALL the COLUMNS RENAME BY precideing WITH cric_

ALTER TABLE cricketer
MODIFY COLUMN cric_id  id ;
MODIFY COLUMN cric_name NAME VARCHAR(100) NOT NULL,
MODIFY COLUMN cric_icc_id icc_id INT NOT NULL UNIQUE KEY,
MODIFY COLUMN crick_icc_id_country    icc_id_country VARCHAR(100) NOT NULL,




ALTER TABLE cricketer
CHANGE  COLUMN	 id cric_id INT NOT NULL,
CHANGE  COLUMN	icc_id_country cric_icc_id_country VARCHAR(150) NOT NULL UNIQUE KEY,
CHANGE  COLUMN	 NAME cric_name VARCHAR(150) NOT NULL,
CHANGE  COLUMN	icc_id cric_icc_id INT NOT NULL UNIQUE KEY,

CHANGE  COLUMN	Runs  cric_Runs INT NOT NULL,
CHANGE  COLUMN wickets cric_wickets INT NOT NULL,
CHANGE  COLUMN Catches  cric_Catches INT NOT NULL,
CHANGE  COLUMN Matches cric_Matches INT NOT NULL ,
CHANGE  COLUMN avge cric_avg FLOAT  NOT NULL,
CHANGE  COLUMN  MON cric_mon INT NOT NULL  ,
CHANGE  COLUMN  man_of_the_series cric_man_oftheseries INT NOT NULL ;
DESCRIBE cricketer









CHANGE ALL the VARCHAR size IS 150;
make ALL the COLUMNS AS NOT nullabe;






6 INSERT minimum of six records INTO the cricketer TABLE USING 
BOTH INSERT approache`crickter_management``crickter_management`s 



INSERT  INTO cricketer (`cric_id`,`cric_name`,`cric_icc_id`,`cric_icc_id_country`,`cric_Runs`,`cric_wickets`,`cric_avg`,`cric_Catches`,`cric_Matches`,`cric_mon`,`cric_man_oftheseries`)
 VALUES 
(1,'Rohith',89100,'india',120,2,70,100,120,19,8),
(2,'Virat',90100,'indiaa',120,5,86,130,200,23,10),
(3,'afridi',92100,'pakistan',20,5,50,80,80,18,6);




INSERT INTO cricketer VALUES(4,'marcusharris',92101,'australia',60,2,65,126,76,8,5),
(5,'Evil lewis',93100,'westindies',89,7,76,129,87,12,7),
(6,'daniel',93200,'newzealand',98,6,87,67,76,8,4);








-- 7 select all the data from cricker table 


SELECT * FROM cricketer


-- 8 select all the data from cricker table  who has played more than 70 matches 

SELECT * FROM cricketer WHERE cric_matches>70

UPDATE cricketer SET cric_matches=112 WHERE cric_id=4;

-- 9 select  the data from cricker table where the cricketer  is not a player of india cricketer but has played more than 100 matches 

SELECT * FROM cricketer WHERE cric_icc_id_country!='india'AND cric_icc_id_country!='indiaa' AND cric_matches>100;






-- 10 from cricker table  fetch the cricketer who has  highest number of matches 

	
SELECT cric_name,MAX(cric_matches) FROM cricketer 


-- 11  from cricker table  find how many crickerters are playing for each country 

SELECT cric_icc_id_country, COUNT(cric_id)FROM cricketer GROUP BY cric_icc_id_country



-- 12 dispaly the cricketer table in the decreasing the order of the cricketers average 


SELECT * FROM cricketer ORDER BY cric_avg DESC


-- 13 from the crikcter table fetch the details of crickter who has third highest runs 


SELECT cric_name,MAX(cric_runs) FROM cricketer WHERE cric_runs <((SELECT cric_name,MAX(cric_runs) FROM cricketer WHERE cric_runs<(SELECT cric_name,MAX(cric_runs) FROM cricketer)));





-- 14 india has clash pakistan where  virat and rohith both scored 120 runs each while afridi gabbed 5 wickets depeict above scenario in the table


SELECT cric_name,cric_runs,cric_wickets FROM cricketer WHERE cric_runs=120 OR cric_wickets=5;



-- 15 find the total no of wickets ,runs, matches,man of the match ,match of seriesgrab by each country  


SELECT cric_icc_id_country,SUM(cric_wickets) AS total_wickets,SUM(cric_runs) AS total_runs,SUM(cric_matches) AS total_matches,SUM(cric_mon) AS total_man_of_the_matches,SUM(cric_man_oftheseries) AS total_cric_man_oftheseries FROM cricketer GROUP BY cric_icc_id_country;




-- 16 write a query all crickter whos names starts from R and has played matches between 100 to 200 and is player from either india or australia or westindies 


SELECT cric_name FROM cricketer WHERE cric_name LIKE 'R%'OR cric_matches>=100 AND cric_matches>=200 AND cric_icc_id_country='india' AND cric_icc_id_country='australia' AND cric_icc_id_country='westindies' ;

