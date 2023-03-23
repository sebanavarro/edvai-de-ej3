select avg(od.quantity * od.unit_price) over (partition by o.customer_id) as avgorderamount, o, od
from orders o
inner join order_details od on o.order_id = od.order_id 