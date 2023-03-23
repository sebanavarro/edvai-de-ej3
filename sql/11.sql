/*
11. Calcular la suma total de gastos de envío por país de destino
*/

select ship_country, order_id, shipped_date, freight, sum(freight) over (partition by ship_country)
from orders o
where shipped_date is not null