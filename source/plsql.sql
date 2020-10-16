declare 
cursor info is select * from clients;
begin 
for fila in info loop
dbms_output.put_line( 
'id '||fila.IDCLIENT ||
' nombre '||fila.FIRSTNAME||
' apellidos '||fila.LASTNAME||
' RFC '||fila.RFC||
' dirrecion '||fila.ADDRESS ||
' cumpleaños '||fila.BIRTHDAY||
' fecha de creacion '||fila.CREATE_DATE);
  END LOOP;
END;

CREATE OR REPLACE PROCEDURE upd_Price
(v_id IN products.IDPRODUCT%TYPE) IS
BEGIN

UPDATE products
SET price = price * 1.10
WHERE IDPRODUCT = v_id;

END upd_Price;

CREATE OR REPLACE PROCEDURE upd_getNewPrice
(v_id IN products.IDPRODUCT%TYPE,
v_price out products.price%TYPE) IS
BEGIN

UPDATE products
SET price = price * 1.10
WHERE IDPRODUCT = v_id;

select  price into v_price from PRODUCTS WHERE IDPRODUCT = v_id ;

END upd_getNewPrice; 

CREATE OR REPLACE PROCEDURE guessPrice
(v_price  in out products.price%TYPE) IS
BEGIN

v_price:=v_price;

END guessPrice; 

CREATE OR REPLACE FUNCTION getIVA
(v_price  in  number) RETURN number is
BEGIN

RETURN (v_price*0.10);

END getIVA; 

CREATE OR REPLACE FUNCTION getquantity
(v_idProduct  in  number) RETURN number is
v_quantity products.QUANTITY%TYPE :=0;
BEGIN
select quantity into v_quantity from products where IDPRODUCT=v_idProduct;
RETURN (v_quantity);

END getquantity; 

CREATE OR REPLACE FUNCTION getquantitysuppliesbyprovider
(v_idProvider  in  number) RETURN number is
v_quantity NUMBER :=0;
BEGIN
select count(IDSUPPLY)into v_quantity from supplies where IDSUPPLIER=v_idProvider;
RETURN (v_quantity);

END getquantitysuppliesbyprovider; 

CREATE OR REPLACE TRIGGER upd_quantityProduct
AFTER INSERT  ON sales
FOR EACH ROW
declare 
v_id number :=0;
v_quantity number :=0;
BEGIN
IF INSERTING THEN
  select IDPRODUCT, quantity into v_id,v_quantity from SALESPRODUCTS where IDSALE=(select max(IDSALE) from sales);
  UPDATE PRODUCTS SET QUANTITY =QUANTITY  - v_quantity
  WHERE IDPRODUCT=v_id;
END IF;
END;

CREATE OR REPLACE TRIGGER upd_quantity
AFTER INSERT  ON supplies
FOR EACH ROW
declare 
v_provider number :=0;
BEGIN
IF INSERTING THEN
  select Idsupplier into v_provider from supplies where idSupply=(select max(idSupply) from supplies);
  UPDATE providers SET visits =visits  +1
  WHERE idprovider=v_provider;
END IF;
END;

CREATE OR REPLACE TRIGGER secure_supplies
BEFORE INSERT OR UPDATE OR DELETE ON supplies
BEGIN
IF(TO_CHAR(SYSDATE, 'DY') IN ('SAT', 'SUN'))
OR (TO_CHAR(SYSDATE, 'HH24') NOT BETWEEN '08' AND '18') THEN
IF DELETING THEN
RAISE_APPLICATION_ERROR(-20501, 'Solo se puede eliminar de
supplies en horario laboral');
ELSIF INSERTING THEN
RAISE_APPLICATION_ERROR(-20502, 'Solo se puede insertar en
supplies en horario laboral');
ELSIF UPDATING('SALARY') THEN
RAISE_APPLICATION_ERROR(-20503, 'Solo se puede actualizar el
SALARY de supplies en horario laboral');
ELSE
RAISE_APPLICATION_ERROR(-20504, 'Solo se puede eliminar de
supplies en horario laboral');
END IF;
END IF;
END;