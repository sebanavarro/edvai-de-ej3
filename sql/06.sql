/*
Row_number
6. Obtener el ranking de los productos más vendidos
*/

select row_number() over (order by sum(od.quantity) desc) as ranking, p.product_name, p.product_id, sum(od.quantity)
from order_details od 
inner join products p on od.product_id = p.product_id 
group by p.product_name, p.product_id  
