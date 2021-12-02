#UC1
create database AddressBook;
show databases;

#UC2:
#create table in the database:
use AddressBook;
create table addressbook(firstname varchar(200),lastname varchar(200),address varchar(200),city varchar(150),state varchar(150),
zip int,phone_num long,email varchar(200));

#UC3:
#Inserting the new addresses:

insert into addressbook values('Sayali','Bodake','abc','Nashik','Maharashtra',521109,8125348769,'sayalibodake28@gmail.com');
insert into addressbook values('Shruti','Patil','xyz','Dhule','Maharashtra',521105,9630254187,'shrutipatil@gmail.com');
insert into addressbook values('Anu','Kakad','pqr','Mumbai','Maharashtra',521119,9182576302,'anubodakem@gmail.com');
insert into addressbook values('Rajesh','Gore','lmn','Nanded','Maharashtra',531129,8529637014,'gorerajesh@gmail.com');
insert into addressbook values('Sai','Nagare','jkl','Pune','Maharashtra',531239,7356412890,'nagaresai@gmail.com');
select* from addressbook;

#UC4:
#Updte the address by firstname:
update addressbook set address = 'sai apartment' where firstname = 'Sayali';
select * from  addressbook;

#UC5:
#deleting the contact:
delete from addressbook where firstname = 'Sai';
select * from  addressbook;

#UC6:
select firstname from addressbook where city = 'Pune';
select firstname from addressbook where city = 'Dhule';

#UC7
select state,count(firstname) from addressbook where state ='Maharashtra';

#UC8
SELECT firstname, lastname, address, city, state, zip, phone_num, email FROM addressbook ORDER BY firstname;

#UC9
 alter table addressbook add type varchar(150) after email;
 desc addressbook;
 update addressbook set type='friend' where firstname='Shruti';
update addressbook set type='friend' where firstname='Rajesh';
update addressbook set type='brother' where firstname='Anu';
 select * from addressbook;
 
 #UC10
 select type,count(phone_num) from addressbook where type='friend';
 select type,count(firstname) from addressbook where type='friend';
 
 #UC11
 insert into addressbook (firstname,lastname,address,city,state,zip,phone_num,email,type) values
 ('Sai','Nagare','jkl','Pune','Maharashtra',531239,7356412890,'nagaresai@gmail.com','friend');
 insert into addressbook (firstname,lastname,address,city,state,zip,phone_num,email,type) values
 ('Rahul','Bodake','samarth paradise','Mumbai','Maharashtra',501023,9403465525,'rahulbodake@gmail.com','brother');
 select * from addressbook;
 
 #UC12
 create table personcontact(firstname varchar(100),lastname varchar(100),address varchar(150),
 phonenumber bigint,email varchar(150),primary key (firstname));
 desc personcontact;
 create table personaddress(zip int(10),city varchar(100),state varchar(100),primary key(zip));
 desc personaddress;
 create table person_contact_address(firstname varchar(50),zip int(10),foreign key(firstname)
 references personcontact(firstname),foreign key(zip) references personaddress(zip));
 insert into personcontact(firstname,lastname,address,phonenumber,email) values
 ('Lokesh','Ugalmugale','AB Road','8085894143','lokesh@gmail.com'),
 ('Akash','Pande','Panchvati','8055666868','akash@gmail.com');
select* from personcontact;
insert into personaddress(zip,city,state) values('522101','Nanded','Maharashtra'),('508207','Banglore','Karnataka');
select * from personaddress;

#UC13
select * from personcontact;
   
 
