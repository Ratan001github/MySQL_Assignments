use assignment;

#Q1
delimiter //
create procedure order_status(in t_year int, 
								in t_month int)
                                
       begin
			select orderNumber,
            orderdate,
            status
            from orders
            where year(orderDate)= t_year 
            and 
            month(orderDate)= t_month;
 end //           
 select * from orders;
call order_status(2004, 11);

#Q2

select * from payments;
            
    delimiter // 
			create procedure customer_status(in cust_no int)
            begin
					select case 
						when amount < 25000 then 'Siliver'
                        when amount between 25000 and 50000 then 'Gold'
                        else 'Platinum'
            end as status
            from payments
            where customerNumber = cust_no;
            
            end //
            
            call customer_status(103);
            call customer_status(114);
            call customer_status(119);
            
   select c.customerNumber,
		c.customername,
        o.status
        from customers c
        left join orders o
        using (customerNumber);
        
#Q3

select * from movies;        
select * from rentals;

delimiter //
create trigger trg_movies_update
after delete on movies
for each row
begin
    update rentals
    set movieid = id
    where movieid = old.id ;
end;

delimiter //
create trigger trg_movies_delete 
after delete on movies 
for each row 
begin
    delete from   rentals
    where movieid 
    not in (select distinct id from movies);
end;

drop trigger if exists trg_movies_update;

insert into movies(id, title, category)
values (12,'Animal','Action/Drama');

select * from movies;

update rentals
set movieid = 12
where memid=8;

update movies 
set id = 11
where title regexp'Animal';

select * from movies;
select * from rentals;


#Q4
        select * from employee;
        
        
	select *from employee
	order by salary desc
	limit 2,1;
   
   
#Q5
select *,
				dense_rank () over (Order by salary desc) as Rank_salary
                from employee;