/*
LAG
15.Mostrar por cada producto de una orden, la cantidad vendida y la cantidad
vendida del producto previo.
*/

select o.order_id, od.product_id, od.quantity, lag(od.quantity,1) over (order by o.order_id, od.product_id)
from orders o 
inner join order_details od on o.order_id = od.order_id 