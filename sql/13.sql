/*
13.Ranking de empleados por fecha de contratacion
*/

select employee_id, first_name, last_name, hire_date, rank() over (order by hire_date asc) 
from employees e 