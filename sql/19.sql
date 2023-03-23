/*
19.Obtener un listado que muestra el total de ventas por categoría de producto junto con el
total de ventas de la categoría siguiente
*/

select c.category_name, sum(od.unit_price * od.quantity) as totalsales, lead(sum(od.unit_price * od.quantity),1) over (order by c.category_name asc)
from orders o 
inner join order_details od on o.order_id = od.order_id
inner join products p on od.product_id = p.product_id 
inner join categories c on p.category_id = c.category_id 
group by c.category_name 