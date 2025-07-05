select name,price,category from products
where price>(select avg(price) from products);