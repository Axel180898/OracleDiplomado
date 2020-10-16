create view ProductsInfo as select NAMEPRODUCT, CATEGORYNAME,BARCODE,PRICE,QUANTITY from products join categories on products.IDCATEGORY=categories.IDCATEGORY

create view ClientsInfo as select LASTNAME,FIRSTNAME,RFC,ADDRESS,BIRTHDAY from clients

create view SuppliersInfo as select  NAMEPROVIDER,ADDRESS,RFC,VISITS from providers