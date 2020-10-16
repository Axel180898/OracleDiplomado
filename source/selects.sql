
Tres consultas con and or y not
select * from clients order by birthday desc
select * from clients order by birthday asc
select * from clients order by firstname desc

Tres consultas con order by
select * from  products  where idcategory=1 or idcategory=2
select * from  products  where idcategory=2 or price<=1000
select * from  products  where idcategory  is not null;

Consulta SELECT con uso de: operadores aritméticos , Operadores de concatenación, Condiciones de búsqueda,Uso de cláusula BETWEEN ,Uso de condición NOT
SELECT nameProduct||' cuesta '||price||" pero con impuesto del 10% "||(price*1.10) from products where idcategory is not null and  price BETWEEN 100 and 2000

consulta SELECT con uso de: Función CONCAT ,Función SUBSTR, Función INSTR
select Concat(Concat(Firstname,'' ),Lastname)as Nombre_Completo,SUBSTR(Firstname,1,1) as Primera_Letra,instr(firstname,'C')as Contiene_Una_C from Clients

consulta SELECT con uso de: Función LENGTH, Función TRIM, Función ROUND, Función TRUNC
select trim('0'from barcode) as quita_Los_ceros ,round(price,0) as PRECIO_SIN_DECIMAL_BY_ROUND,trunc(price,0) as PRECIO_SIN_DECIMAL_BY_TRUNC from Products;

consulta SELECT con uso de: Función MONTHS_BETWEEN, Función NEXT_DAY, Función LAST_DAY
select MONTHS_BETWEEN(SYSDATE,birthday),nextday(sysdate,'VIERNES'),Lastday(create_date) from clients

consulta SELECT con uso de: Función AVG, Función MAX, Función MIN
select avg(price) as promedio, min(price) as minimo,max(price) as maximo from products;

consulta SELECT con uso de: Función AVG, Función MAX, Fuxxnción MIN, Cláusula GROUP BY
select avg(price) as promedio,min(price) as minimo,max(price) as maximo, IDCATEGORY from products GROUP BY IDCATEGORY;

Consulta select con natural join
select nameProduct, CategoryName from products natural join Categories

consulta select con 3 join 
select nameProduct,CATEGORYNAME,PROVIDERS.NAMEPROVIDER,SUPPLYPRODUCT.QUANTITY,SUPPLIES.CREATE_DATE from products join Categories on products.IDCATEGORY=Categories.IDCATEGORY  join SUPPLYPRODUCT on products.IDPRODUCT=SUPPLYPRODUCT.IDPRODUCT  join SUPPLIES on SUPPLYPRODUCT.IDSUPPLY=SUPPLIES.IDSUPPLY join PROVIDERS on SUPPLIES.IDSUPPLIER=PROVIDERS.IDPROVIDER where products.IDCATEGORY=2;

Dos consultas con subconsultas
select NAMEPRODUCT,IDPRODUCT from products where IDCATEGORY=(select IDCATEGORY from CATEGORIES where CATEGORIES.CATEGORYNAME='Sala de estar');
select count(IDSUPPLY)as "Numero de solicitudes" from supplies where IDSUPPLIER=(select PROVIDERS.IDPROVIDER from PROVIDERS where PROVIDERS.NAMEPROVIDER='Polaroid');

Una consulta con union 
select idProvider from providers union select supplies.IDSUPPLIER from supplies;

