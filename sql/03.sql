/*
3. Obtener el promedio de cantidad de productos vendidos por categoría (product_name,
quantity_per_unit, unit_price, quantity, avgquantity)
*/

select p.product_name, c.category_name, p.quantity_per_unit, od.unit_price, od.quantity, avg(od.quantity) over (partition by p.category_id) as avgquantity
from order_details od 
inner join products p on od.product_id = p.product_id 
inner join categories c on p.category_id = c.category_id 
order by c.category_name, p.product_name