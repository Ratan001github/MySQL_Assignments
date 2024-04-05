use assignment;

#Q1
select *from employee;
select * from employee where deptno = 10 and salary > 3000;

#Q2
select * from students;
                        
alter table students
  add column Grade varchar(20) after marks;
  
  
  update students
  set Grade = 
     case
		when marks between 40 and 49.99 then 'third class'
		when marks between 50 and 59.99 then 'second class'
		when marks between 60 and 79.99 then 'first class'
		when marks between 80 and 100 then 'Distinction'
		else 'failed'
    end;
    
select * from students;

select * from students where grade = 'first class';

select * from students where grade = 'Distinction';

select count(Grade) as 'Students graduated with First Class'
from students
where Grade regexp 'First';
    
    
select count(Grade) as 'Students graduated with Distinction'
from students
where Grade regexp 'Dist';


#Q3

select distinct city from station where id % 2 = 0;

#Q4

select count(city) as 'Count of all Cities'
  from station;
  
select count(distinct city) as 'Count of Distinct Cities'
  from station;
  
select count(city) - count( distinct city) as 'Difference Between Number of Distinct and All Cities'
  from station;
  
  select * from station;
  
  
#Q5
select distinct city 
from station 
where left(city,1) in ('a','e','i','o','u');


select distinct city 
from station 
where left(city,1) in ('a','e','i','o','u') and right(city,1) in ('a','e','i','o','u'); 


select distinct city 
from station 
where left(city,1) not in ('a','e','i','o','u');



select distinct city 
from station 
where left(city,1) not in ('a','e','i','o','u') and right(city,1) not in ('a','e','i','o','u'); 


#Q6

select concat(first_name, ' ' , last_name) , salary from emp 
where salary > 2000 and Hire_Date < DATE_SUB(CURRENT_DATE, INTERVAL 36 MONTH)
order by salary desc;


#Q7

select deptno,
sum(salary) as total_salary 
from employee
group by deptno;


#Q8
select * from city;
select count(name) 
from city where population > 100000;


#Q9

select district, 
sum(population) as Total_population
from city
where district = 'California';

#Q10

select district,
avg(population) as Avg_population
from city 
group by district;


#Q11
select * from orders  customers;
select o.orderNumber,
	   o.status,
	   o.customerNumber,
       c.customername,
       o.comments
       from customers c
       join orders o
       using(customerNumber)
       where o.status = 'Disputed';