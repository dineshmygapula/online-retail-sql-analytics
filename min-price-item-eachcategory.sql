select a.name,a.category,min_price.price from products as a
join(select category,min(price) as price from products
group by category) as min_price 
on a.category=min_price.category AND a.price = min_price.price;


