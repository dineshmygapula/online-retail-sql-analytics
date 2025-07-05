select 
a.customer_id,a.name,coustomer_count.count_number from customers as a
join 
(select customer_id, count(customer_id) as count_number from orders
group by 
customer_id having count(customer_id)>2) as coustomer_count
on a.customer_id= coustomer_count.customer_id;