select c.category_name, p.category_id, p.product_name, p.unit_price, avg(p.unit_price) over (partition by p.category_id) as avgpricebycategory 
from products p
inner join categories c  on p.category_id = c.category_id 