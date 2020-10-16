create table Clients(
idClient number not null primary key,
LastName Varchar2(255),
FirstName Varchar2(255),
RFC Varchar2(255),
Address Varchar2(255),
BirthDay date,
Create_Date date default SYSDATE
);
create table Categories(
idCategories number not null primary key,
CategoryName VARCHAR2(255)
);
create table Providers(
idProvider number not null primary key,
nameProvider varchar2(255),
Address VARCHAR2(255),
RFC varchar2(18),
visits number,
create_date date default SYSDATE
);
create table Products(
idProduct number not null primary key,
idCategory number,
nameProduct varchar(255),
barcode varchar2(255),
price float,
quantity number default 0,
create_date date default SYSDATE,
CONSTRAINT productCategories_fk FOREIGN KEY (idCategory) 
REFERENCES Categories(idCategories)
);
create table Supplies(
idSupply number not null primary key,
idSupplier number,
create_date date default SYSDATE,
CONSTRAINT SupplySupplier_FK FOREIGN KEY (idSupplier) 
REFERENCES Providers(idProvider)
);
Create table SupplyProduct(
idSupplyProduct number not null primary key,
idSupply number, 
idProduct number,
Quantity number,
CONSTRAINT SupplyProductSupply_FK FOREIGN KEY (idSupply) 
REFERENCES Supplies(idSupply),
CONSTRAINT SupplyProductProduct_FK FOREIGN KEY (idProduct) 
REFERENCES Products(idProduct)
);
CREATE TABLE Sales(
idSale number not null primary key,
idClient number,
create_date date default SYSDATE,
CONSTRAINT SalesClients_FK FOREIGN KEY (idClient)
REFERENCES Clients(xidClient)
);
create Table SalesProducts(
idSaleProducts number not null primary key,
idSale number,
idProduct number, 
quantity  NUMBER,
CONSTRAINT SaleProductsSale_FK FOREIGN KEY (idSale) 
REFERENCES Sales(idSale) ,
CONSTRAINT SaleProductsProduct_FK FOREIGN KEY (idProduct)
REFERENCES Products(idProduct)
);
