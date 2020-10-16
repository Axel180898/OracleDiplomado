insert into Clients (idClient,LastName,FirstName,RFC,Address,BirthDay) values (2,'Castillo','Josue','CASA180120N98','Corregidora qro','18-08-01');
insert into Clients (idClient,LastName,FirstName,RFC,Address,BirthDay) values (1,'Castillo','Axel','CAJA130110N98','Corregidora qro','18-08-98');
insert into Clients (idClient,LastName,FirstName,RFC,Address,BirthDay) values (3,'Castillo','Nelly','CANA080820N45','Corregidora qro','08-08-03');
insert into Clients (idClient,LastName,FirstName,RFC,Address,BirthDay) values (4,'Castillo','Antonio','CAMA180120N98','Corregidora qro','08-12-74');
insert into Clients (idClient,LastName,FirstName,RFC,Address,BirthDay) values (5,'Cadenas','Cecilia','CAFL180120N98','Corregidora qro','23-11-73');

insert into Categories (idCategories,CategoryName) VALUES (1,'Comida');
insert into Categories (idCategories,CategoryName) VALUES (2,'Sala de estar');
insert into Categories (idCategories,CategoryName) VALUES (3,'Recamara');
insert into Categories (idCategories,CategoryName) VALUES (4,'Baño');
insert into Categories (idCategories,CategoryName) VALUES (5,'Patio');

insert into Providers (idProvider,nameProvider,Address,RFC,visits) values (1,'La costeña','La Roma,CDMX','COST180120N98',0);
insert into Providers (idProvider,nameProvider,Address,RFC,visits) values  (2,'Polaroid','La Roma, CDMX','POLA180120N98',0);
insert into Providers (idProvider,nameProvider,Address,RFC,visits) values  (4,'Colgate','La Roma, CDMX','COLG180120N98',0);
insert into Providers (idProvi  der,nameProvider,Address,RFC,visits) values  (3,'Baffe','Hong Kong. china','BAFF180120N98',0);
insert into Providers (idProvider,nameProvider,Address,RFC,visits) values  (5,'HomeDepot','Qro,QRO','HOME180120N98',0);

insert into Products (idProduct,idCategory,nameProduct,barcode,price,quantity) VALUES (1,1,'Chiles chipotles','000001',14.5,50) ;
insert into Products (idProduct,idCategory,nameProduct,barcode,price,quantity) VALUES (2,2,'pantalla LEDS 32"','000002',3200,13);
insert into Products (idProduct,idCategory,nameProduct,barcode,price,quantity) VALUES (3,3,'Bocina','000003',300,1);
insert into Products (idProduct,idCategory,nameProduct,barcode,price,quantity) VALUES (4,4,'Pasta de dientes tri accion','000004',30,1);
insert into Products (idProduct,idCategory,nameProduct,barcode,price,quantity) VALUES (5,5,'Escoba','000005',30,1);
insert into Products (idProduct,idCategory,nameProduct,barcode,price,quantity) VALUES (6,2,'Bocina grande','000006',500,10);

insert into Supplies (idSupply,idSupplier) Values (1,1);
insert into Supplies (idSupply,idSupplier) Values (2,2);
insert into Supplies (idSupply,idSupplier) Values (3,2);
insert into Supplies (idSupply,idSupplier) Values (4,1);
insert into Supplies (idSupply,idSupplier) Values (5,2);

insert into SupplyProduct (idSupplyProduct,idSupply,idProduct,Quantity) values (1,1,1,35);
insert into SupplyProduct (idSupplyProduct,idSupply,idProduct,Quantity) values (2,2,2,10);
insert into SupplyProduct (idSupplyProduct,idSupply,idProduct,Quantity) values (3,3,2,3);
insert into SupplyProduct (idSupplyProduct,idSupply,idProduct,Quantity) values (4,4,1,15);
insert into SupplyProduct (idSupplyProduct,idSupply,idProduct,Quantity) values (5,5,6,10);

insert into Sales (idSale,idClient) values (1,1);
insert into Sales (idSale,idClient) values (2,2);
insert into Sales (idSale,idClient) values (3,3);
insert into Sales (idSale,idClient) values (4,4);
insert into Sales (idSale,idClient) values (5,5);

insert into SalesProducts (idSaleProducts,idSale,idProduct,quantity) values (1,1,1,2);
insert into SalesProducts (idSaleProducts,idSale,idProduct,quantity) values (2,1,4,1);
insert into SalesProducts (idSaleProducts,idSale,idProduct,quantity) values (3,2,1,1);
insert into SalesProducts (idSaleProducts,idSale,idProduct,quantity) values (4,3,1,1);
insert into SalesProducts (idSaleProducts,idSale,idProduct,quantity) values (5,4,1,1);
insert into SalesProducts (idSaleProducts,idSale,idProduct,quantity) values (6,5,1,1);