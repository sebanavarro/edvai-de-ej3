/*
7. Asignar numeros de fila para cada cliente, ordenados por customer_id
*/

select row_number() over (order by customer_id) as rownumber, *
from customers c 
 
