use e_learning;

-- INSERT DATA TO ALL ATABLES
-- INSERT DATA TO LEARNERS TABLE

select * from learners;

insert into learners(learner_id, full_name, country)
values (1001,"ABI VARSHINI","MADURAI"),
	   (1002,"PREM KUMAR","COIMABATORE"),
       (1003,"NANDHA GOPAL","TIRUPPUR"),
       (1004,"VISHNU VISHAL","CHENNAI"),
       (1005,"SREE LAKSHMI","ERODE");

-- INSERT DATA TO COURSE

select* from course;

insert into course(course_id, course_name, category, unit_price)
values (11,"PYTHON","PROGRAMMING",5000.00),
	   (22,"HTML & CSS","WEB DEVELOPMENT",2500.00),
       (33,"JAVA","PROGRAMMING",4500.00),
       (44,"POWER BI","DATA ANALYTICS","4000"),
       (55,"SQL","DATA BASE",3000);
       
-- INSERT DATA TO PURCHASES

select * from purchases;

insert into purchases (purchase_id, learner_id, course_id, quantity, purchase_date)
values    ("E001",1005,44,6,"2023-03-14"),
		  ("E002",1001,11,3,"2024-02-01"),
          ("E003",1002,33,7,"2024-10-03"),
		  ("E004",1004,22,5,"2025-04-22"),
          ("E005",1003,55,1,"2025-06-01"),
          ("E006",1001,55,4,"2025-10-18"),
          ("E007",1003,11,9,"2024-11-11"),
          ("E008",1002,44,7,"2023-04-14");








