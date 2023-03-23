/*
MAX
5. Seleccione el id de producto, el nombre de producto, el precio unitario, el id de
categoría y el precio unitario máximo para cada categoría de la tabla Products.
*/

select p.product_id, p.product_name, p.unit_price, p.category_id, max(unit_price) over (partition by category_id) as maxunitprice
from products p 