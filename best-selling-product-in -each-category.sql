select a.name ,a.category,order_avg.sum_total from products as a 
join (select  product_id, sum(quantity) as sum_total from order_items
group by product_id ) as order_avg
on a.product_id=order_avg.product_id;

