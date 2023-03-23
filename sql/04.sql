/*
MIN
4. Selecciona el ID del cliente, la fecha de la orden y la fecha más antigua de la
orden para cada cliente de la tabla 'Orders'
*/

select customer_id, order_date, min(order_date) over (partition by customer_id) as earliestorderdate
from orders o 