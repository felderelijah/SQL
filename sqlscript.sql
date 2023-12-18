CREATE TABLE Doctors (    
	docID VARCHAR2(20),    
    FNAME VARCHAR2(20),    
    LNAME VARCHAR2(20),    
    Specialization VARCHAR2(20),    
    Phone VARCHAR2(20),  
    constraint pk_Doctors primary key (docID)  
) ;

CREATE TABLE Patient ( 
	ID VARCHAR2(20), 
	FNAME VARCHAR2(20), 
    LNAME VARCHAR2(20), 
	Insurance VARCHAR2(30), 
	docID VARCHAR2(20),
    constraint pk_Patient primary key (ID)
    constraint fk_Doctors foreign key (docID) references Doctors (docID)
);

insert into Doctors (docID, FNAME, LNAME, Specialization, Phone)    
	values(111,'Brandon','Scott','Medicine',4102225555);

insert into Doctors (docID, FNAME, LNAME, Specialization, Phone)     
	values(112,'Sarah','Smith','Surgery',4104445555);

insert into Doctors (docID, FNAME, LNAME, Specialization, Phone)     
	values(113,'Isaiah','Will','Dermatology',4106665555);

insert into Doctors (docID, FNAME, LNAME, Specialization, Phone)     
	values(114,'Cleo','Francis','Emergency',4108885555);

insert into Patient (ID, FNAME, LNAME, Insurance, docID) 
	values(1001, 'Miley', 'Cyrus', 'BlueCross BlueShield', 111);

insert into Patient (ID, FNAME, LNAME, Insurance, docID) 
	values(2001,'Chad','Bleu', 'Aetna', 114);

insert into Patient (ID, FNAME, LNAME, Insurance, docID) 
	values(3001,'Troy','Bolton', 'Cigna', 114);

insert into Patient (ID, FNAME, LNAME, Insurance, docID) 
	values(4001,'Gabrielle','Union', 'United Healthcare', 113);

insert into Patient (ID, FNAME, LNAME, Insurance, docID) 
	values(5001,'Zack','Martin', 'Kaiser Permanente', 112);

insert into Patient (ID, FNAME, LNAME, Insurance, docID) 
	values(6001,'Cody','Martin', 'Oscar', 112);

