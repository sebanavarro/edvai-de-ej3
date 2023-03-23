/*
14.Ranking de productos por precio unitario
*/

select product_id, product_name, unit_price, rank() over (order by unit_price desc) 
from products p 