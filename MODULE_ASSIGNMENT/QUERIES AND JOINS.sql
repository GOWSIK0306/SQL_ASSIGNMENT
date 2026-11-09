
-- COMBINE THREE TABLES

select p.purchase_id,p.purchase_date,l.full_name,p.quantity,c.unit_price,(p.quantity*c.unit_price) as total_revenue,c.course_name,c.category,l.country
from purchases as p
left join learners as l on p.learner_id=l.learner_id
left join course as c on p.course_id=c.course_id;

-- Display each learner’s total spending (quantity × unit_price) along with their country

select l.learner_id,l.full_name,sum(p.quantity*c.unit_price) as total_amount,l.country 
from purchases as p
inner join learners as l on p.learner_id=l.learner_id
inner join course as c on p.course_id=c.course_id
group by l.learner_id;

-- Find the top 3 most purchased courses based on total quantity sold.

select c.course_name ,sum(p.quantity) as sold 
from purchases as p 
left join course as c on p.course_id=c.course_id
group by course_name order by sold desc limit 3;

-- Show each course category’s total revenue and the number of unique learners who purchased from that category. 

select c.category, sum(p.quantity*c.unit_price) as total_revenue,count(distinct l.learner_id) as count_of_learner
from purchases as p
inner join course as c on p.course_id=c.course_id
inner join learners as l on p.learner_id=l.learner_id
group by c.category;

-- List all learners who have purchased courses from more than one category.
 
 select l.learner_id,l.full_name ,count(c.category) as  total_categories 
from purchases as p
inner join course as c on p.course_id=c.course_id
inner join learners as l on p.learner_id=l.learner_id
group by l.learner_id having total_categories>1;

-- Identify courses that have not been purchased at all. 

select c.course_id,c.course_name
FROM course as c
left join  purchases as  p on c.course_id = p.course_id
where  p.course_id is null;

