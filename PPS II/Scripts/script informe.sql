#Segun un rango de fechas, mostrar la fecha, el numero de factura, la descripcion de los productos, la cantidad de producto y el total final de dicho producto
SELECT cuerpo_comprobantes.IdCuerpo, encabezado_comprobantes.Fecha, encabezado_comprobantes.NumComprobante as N°Comprobante, productos.NombreProducto as Producto, cuerpo_comprobantes.Cantidad, cuerpo_comprobantes.BonificacionTotal as Bonificacion, cuerpo_comprobantes.Total
FROM encabezado_comprobantes, productos, cuerpo_comprobantes
WHERE encabezado_comprobantes.NumComprobante = cuerpo_comprobantes.NumeroComprobante AND cuerpo_comprobantes.ProductoServicio = productos.IdProducto 
AND encabezado_comprobantes.Fecha BETWEEN '2019-01-01' AND '2020-12-01' ORDER BY encabezado_comprobantes.Fecha;

#Para calcular el total ingresado
SELECT ROUND(sum(cuerpo_comprobantes.Total), 2) as TotalFinal
FROM encabezado_comprobantes, productos, cuerpo_comprobantes
WHERE encabezado_comprobantes.NumComprobante = cuerpo_comprobantes.NumeroComprobante AND cuerpo_comprobantes.ProductoServicio = productos.IdProducto 
AND encabezado_comprobantes.Fecha BETWEEN '2020-05-01' AND '2020-12-31';

#Para realizar el grafico de torta
SELECT productos.NombreProducto as Producto, sum(cuerpo_comprobantes.Cantidad) AS Cantidad
FROM encabezado_comprobantes, productos, cuerpo_comprobantes
WHERE encabezado_comprobantes.NumComprobante = cuerpo_comprobantes.NumeroComprobante AND cuerpo_comprobantes.ProductoServicio = productos.IdProducto 
AND encabezado_comprobantes.Fecha BETWEEN '2019-01-01' AND '2020-12-12' GROUP BY productos.NombreProducto;