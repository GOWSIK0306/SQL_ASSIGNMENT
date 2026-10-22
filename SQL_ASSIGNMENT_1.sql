-- create a database
create database employee;
use employee;

-- create tables "departments","employees","location"

create table departments ( department_id  int, department_name varchar(100) );
create table employees   ( employee_id    int , employee_name varchar(50) ,
						   gender enum('M','F'), age int , hire_date date ,
                           designation varchar(100), department_id int , location_id int,salary decimal (10,2));
create table location    (location_id int, location varchar(30) );

-- table alteration (ALTER)

alter table employees add column email varchar(40) unique key not null;
alter table employees modify column designation varchar(150);
alter table employees drop column age;
alter table employees rename column  hire_date to date_of_joining;

-- table renaming (RENAME)

rename table departments to department_info;
rename table location to locations;

-- table truncation (Truncate)

truncate table employees;

-- dropping (drop)

drop table employees;
drop database employee;


-- again create database and tables (with constraints)

create table departments(  department_id int unique key not null, 
						   department_name varchar(100) primary key );
create table employees  (  employee_id  int primary  key , 
                           employee_name varchar(50) not null ,
						   gender enum( 'm','f') not null,
                           age int check( age >=18) not null, 
                           hire_date date default (current_date),
                           designation varchar(100) not null, 
                           department_id int not null, 
                           location_id int  not null,
                           salary decimal (10,2) not null,
                           foreign key (department_id) references department_info(department_id),
                           foreign key (location_id) references locations(location_id));
create table location   (  location_id int primary key auto_increment not null , 
                           location varchar(30) not null unique);	





 




