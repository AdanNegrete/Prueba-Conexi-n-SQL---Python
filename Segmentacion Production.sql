/************************************************
Segmentación del esquema y creacion de Triggers en base PRODUCTION
***********************************************/
go
create database Productionbd
go
use Productionbd
--Creacion esquema en BD Production
Create schema Production
go
------------------------------------------------------------------------------ LISTO
--Mete los datos dentro del esquema desde la BD del LS
select productid, name, productnumber, color, safetystocklevel,
   standardcost, listprice, size, productsubcategoryid,
   productmodelid, sellstartdate, sellenddate, discontinueddate
   into Production.Product
   from AdventureWorks2019.production.product
	--Ver que los datos se copiaron del LS al esquema
select * from Production.product
------------------------------------------------------------------------------ LISTO
select productcategoryid, name
   into Production.ProductCategory
   from AdventureWorks2019.production.ProductCategory
	--Ver que los datos se copiaron del LS al esquema
select * from Production.ProductCategory
------------------------------------------------------------------------------ LISTO
select productdescriptionid, description 
	into Production.ProductDescription
	from AdventureWorks2019.production.ProductDescription
	--Ver que los datos se copiaron del LS al esquema
select * from Production.ProductDescription
------------------------------------------------------------------------------ LISTO
select productid, locationid, shelf, bin, quantity 
	into Production.ProductInventory
	from AdventureWorks2019.production.ProductInventory
	--Ver que los datos se copiaron del LS al esquema
select * from production.ProductInventory
------------------------------------------------------------------------------ ERROR
/*
ERROR
NO SE CREO LA TABLA
*/
go
use AdventureWorks
go

--NO PERMITE XML
select productmodelid, name, catalogdescription, instructions
	into Production.productmodel
	--from (select productmodelid, name, catalogdescription, instructions from 
	from AdventureWorks2019.production.productmodel
	--Ver que los datos se copiaron del LS al esquema
select * from production.productmodel
------------------------------------------------------------------------------ LISTO
select locationid, name, costrate, availability
	into Production.Location
	from AdventureWorks2019.production.Location
	--Ver que los datos se copiaron del LS al esquema
select * from production.Location