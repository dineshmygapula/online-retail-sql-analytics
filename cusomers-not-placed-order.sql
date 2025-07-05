select a.name from customers as a
left join orders as b
on a.customer_id=b.customer_id
where b.customer_id is null;