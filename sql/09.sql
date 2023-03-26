/*
SUM
9. Obtener la suma de venta de cada cliente
*/

select sum(od.unit_price * od.quantity) over (partition by customer_id) as sumorderamount,*
from orders o
inner join order_details od on o.order_id = od.order_id
