-- CREATE A DATABASE "E-LEARNING"

create database e_learning;
use e_learning;

-- CREATE TABLES "LEARNERS","COURSE","PURCHASES"

create table learners (learner_id int primary key,
					   full_name varchar(30) not null,
                       country varchar(30) not null);
create table course (course_id int primary key,
                     course_name varchar(30) unique not null,
                     category varchar(30) not null,
                     unit_price decimal(10,2) not null); 
create table purchases (purchase_id varchar(20) primary key,
					    learner_id  int not null,
                        course_id int not null,
                        quantity int not null,
                        purchase_date date not null,
                        foreign key (learner_id) references learners(learner_id),
                        foreign key (course_id ) references course(course_id));
                     