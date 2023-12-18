CREATE TABLE EMPLOYEES (  
    EMP_ID VARCHAR2(20),  
    EMP_FNAME VARCHAR2(20),  
    EMP_LNAME VARCHAR2(20),  
    EMP_RATING VARCHAR2(10),  
    EMP_ADDRESS VARCHAR2(40),  
    EMP_TELNUM VARCHAR2(20),  
    constraint pk_EMPLOYEES primary key (EMP_ID)  
);

CREATE TABLE CUSTOMERS (     
    CUS_ID VARCHAR2(20),     
    CUS_ADDRESS VARCHAR2(40),  
    constraint pk_CUSTOMERS primary key (CUS_ID)  
);

insert into EMPLOYEES (EMP_ID, EMP_FNAME, EMP_LNAME, EMP_RATING, EMP_ADDRESS, EMP_TELNUM)     
	values(111,'Brandon','Scott','Level 1','123 Maritn Ave',4102225555);

insert into EMPLOYEES (EMP_ID, EMP_FNAME, EMP_LNAME, EMP_RATING, EMP_ADDRESS, EMP_TELNUM)     
	values(200,'Rodney','Harris','Level 2','442 Balt Ave',4105465555);

insert into EMPLOYEES (EMP_ID, EMP_FNAME, EMP_LNAME, EMP_RATING, EMP_ADDRESS, EMP_TELNUM)     
	values(222,'Marvin','Brinkley','Level 3','1215 Kent Ave',4102346785);

insert into EMPLOYEES (EMP_ID, EMP_FNAME, EMP_LNAME, EMP_RATING, EMP_ADDRESS, EMP_TELNUM)     
	values(313,'Isaiah','Smith','Level 4','4213 Orange Rd',4433458901);

insert into EMPLOYEES (EMP_ID, EMP_FNAME, EMP_LNAME, EMP_RATING, EMP_ADDRESS, EMP_TELNUM)     
	values(367,'Kiyah','Lee','Level 1','5711 Penn St',4431235678);

insert into EMPLOYEES (EMP_ID, EMP_FNAME, EMP_LNAME, EMP_RATING, EMP_ADDRESS, EMP_TELNUM)     
	values(428,'Kayla','Bucket','Level 2','831 Wilkens St',4434561246);

insert into EMPLOYEES (EMP_ID, EMP_FNAME, EMP_LNAME, EMP_RATING, EMP_ADDRESS, EMP_TELNUM)     
	values(486,'Khori','Washington','Level 3','677 Apple Ave',4814671566);

insert into EMPLOYEES (EMP_ID, EMP_FNAME, EMP_LNAME, EMP_RATING, EMP_ADDRESS, EMP_TELNUM)     
	values(516,'Naveah','Likely','Level 4','522 Prince St',4815558902);

insert into EMPLOYEES (EMP_ID, EMP_FNAME, EMP_LNAME, EMP_RATING, EMP_ADDRESS, EMP_TELNUM)     
	values(643,'Keith','Quickley','Level 1','890 Greg Ave',4812023481);

insert into EMPLOYEES (EMP_ID, EMP_FNAME, EMP_LNAME, EMP_RATING, EMP_ADDRESS, EMP_TELNUM)     
	values(700,'Jessica','Jones','Level 2','7682 Hilton Rd',4307814902);

insert into CUSTOMERS (CUS_ID, CUS_ADDRESS)     
	values(1001,'123 Rivers Rd');

insert into CUSTOMERS (CUS_ID, CUS_ADDRESS)     
	values(1201,'234 Shock Rd');

insert into CUSTOMERS (CUS_ID, CUS_ADDRESS)     
	values(1301,'345 Belair Rd');

insert into CUSTOMERS (CUS_ID, CUS_ADDRESS)     
	values(1401,'456 Goucher Rd');

insert into CUSTOMERS (CUS_ID, CUS_ADDRESS)     
	values(1501,'567 Titan Rd');

insert into CUSTOMERS (CUS_ID, CUS_ADDRESS)     
	values(1008,'6781 Bennet Ave');

insert into CUSTOMERS (CUS_ID, CUS_ADDRESS)     
	values(1108,'7891 Roger Ave');

insert into CUSTOMERS (CUS_ID, CUS_ADDRESS)     
	values(1304,'8901 Princeton Ave');

insert into CUSTOMERS (CUS_ID, CUS_ADDRESS)     
	values(1456,'1024 Hilltop Ave');

insert into CUSTOMERS (CUS_ID, CUS_ADDRESS)     
	values(3056,'1342 Brooklyn Ave');

CREATE TABLE PACKAGES (     
    PAC_ID VARCHAR2(20),     
    PAC_WEIGHT NUMBER(3,2),     
    PAC_SHIPPED DATE,     
    EMP_ID VARCHAR2(20),     
    constraint pk_PACKAGES primary key (PAC_ID),     
    constraint fk_EMPLOYEES foreign key (EMP_ID) references EMPLOYEES    
);

insert into PACKAGES (PAC_ID, PAC_WEIGHT, PAC_SHIPPED, EMP_ID )   
	values(14001,5.61, to_date('2023-10-20','yyyy-mm-dd'),111);

insert into PACKAGES (PAC_ID, PAC_WEIGHT, PAC_SHIPPED, EMP_ID )  
	values(14011,3.41,to_date('2023-10-25','yyyy-mm-dd'),200);

insert into PACKAGES (PAC_ID, PAC_WEIGHT, PAC_SHIPPED, EMP_ID )  
	values(14021,2.81,to_date('2023-10-30','yyyy-mm-dd'),222);

insert into PACKAGES (PAC_ID, PAC_WEIGHT, PAC_SHIPPED, EMP_ID )  
	values(14031,1.11,to_date('2023-11-04','yyyy-mm-dd'),313);

insert into PACKAGES (PAC_ID, PAC_WEIGHT, PAC_SHIPPED, EMP_ID )  
	values(14041,6.87,to_date('2023-11-09','yyyy-mm-dd'),367);

insert into PACKAGES (PAC_ID, PAC_WEIGHT, PAC_SHIPPED, EMP_ID )  
	values(14051,7.82,to_date('2023-11-14','yyyy-mm-dd'),428);

insert into PACKAGES (PAC_ID, PAC_WEIGHT, PAC_SHIPPED, EMP_ID )  
	values(14061,8.12,to_date('2023-11-19','yyyy-mm-dd'),486);

insert into PACKAGES (PAC_ID, PAC_WEIGHT, PAC_SHIPPED, EMP_ID )  
	values(14071,1.89,to_date('2023-11-24','yyyy-mm-dd'),516);

insert into PACKAGES (PAC_ID, PAC_WEIGHT, PAC_SHIPPED, EMP_ID )  
	values(14081,2.56,to_date('2023-11-29','yyyy-mm-dd'),643);

insert into PACKAGES (PAC_ID, PAC_WEIGHT, PAC_SHIPPED, EMP_ID )  
	values(14091,6.46,to_date('2023-12-03','yyyy-mm-dd'),700);

CREATE TABLE DELIVERIES (   
    DEL_ID VARCHAR2(20), 
    EMP_RATING VARCHAR2(10),  
    RATE NUMBER(3,2),  
    PAC_ID VARCHAR2(20),  
    CUS_ID VARCHAR2(20),   
    constraint pk_DELIVERIES primary key (DEL_ID),  
    constraint fk_PACKAGES foreign key (PAC_ID) references PACKAGES,  
    constraint fk_CUSTOMERS foreign key (CUS_ID) references CUSTOMERS  
);

insert into DELIVERIES (DEL_ID, EMP_RATING, RATE, PAC_ID, CUS_ID) 
	values(9001,'Level 1', 0.02, 14001, 1001);

insert into DELIVERIES (DEL_ID, EMP_RATING, RATE, PAC_ID, CUS_ID) 
	values(9002,'Level 2', 0.03, 14011, 1201);

insert into DELIVERIES (DEL_ID, EMP_RATING, RATE, PAC_ID, CUS_ID) 
	values(9003,'Level 3', 0.04, 14021, 1301);

insert into DELIVERIES (DEL_ID, EMP_RATING, RATE, PAC_ID, CUS_ID) 
	values(9004,'Level 4', 0.05, 14031, 1401);

insert into DELIVERIES (DEL_ID, EMP_RATING, RATE, PAC_ID, CUS_ID) 
	values(9005,'Level 1', 0.02, 14041, 1501);

insert into DELIVERIES (DEL_ID, EMP_RATING, RATE, PAC_ID, CUS_ID) 
	values(9006,'Level 2', 0.03, 14051, 1008);

insert into DELIVERIES (DEL_ID, EMP_RATING, RATE, PAC_ID, CUS_ID) 
	values(9007,'Level 3', 0.04, 14061, 1108);

insert into DELIVERIES (DEL_ID, EMP_RATING, RATE, PAC_ID, CUS_ID) 
	values(9008,'Level 4', 0.05, 14071, 1304);

insert into DELIVERIES (DEL_ID, EMP_RATING, RATE, PAC_ID, CUS_ID) 
	values(9009,'Level 1', 0.02, 14081, 1456);

insert into DELIVERIES (DEL_ID, EMP_RATING, RATE, PAC_ID, CUS_ID) 
	values(9010,'Level 2', 0.03, 14091, 3056);

select *  
from EMPLOYEES;

select *  
from CUSTOMERS;

select *  
from PACKAGES;

select * 
from DELIVERIES;

select PAC_ID, PAC_WEIGHT, PAC_SHIPPED, EMP_ID,  
    PAC_SHIPPED AS PACKAGE_DELIVERED_DATE  
from PACKAGES;

select DEL_ID, PAC_ID, CUS_ID, 
	count(DEL_ID) as Packages_Delivered_For_Customer 
from DELIVERIES 
group by DEL_ID, PAC_ID, CUS_ID;

select EMP_ID, PAC_ID, 
	count(PAC_ID) as Packages_Delivered_By_EMP 
from PACKAGES 
group by EMP_ID, PAC_ID;

SELECT  
    CUSTOMERS.CUS_ID,   
    COUNT(DEL_ID) AS DELIVERY_FEE  
FROM  
    CUSTOMERS, DELIVERIES  
GROUP BY  
    CUSTOMERS.CUS_ID;

SELECT   
    DELIVERIES.DEL_ID,    
    SUM(RATE) * 10 AS Paycheck 
FROM   
    DELIVERIES   
GROUP BY   
    DELIVERIES.DEL_ID, DELIVERIES.RATE 
 
;

