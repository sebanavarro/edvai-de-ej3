/*
8. Obtener el ranking de los empleados más jóvenes () ranking, nombre y apellido del
empleado, fecha de nacimiento)
*/

select row_number() over (order by birth_date desc),concat(first_name, ' ', last_name) as employeename, birth_date 
from employees e  
 
