select a.product_id,a.name,product_count.total_quantity from products as a
join(select product_id, sum(quantity) as total_quantity from order_items
group by product_id having sum(quantity)>1) as product_count
on a.product_id=product_count.product_id limit 3;
