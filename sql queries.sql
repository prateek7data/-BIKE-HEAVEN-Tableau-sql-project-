SELECT * FROM CUSTOMER 
SELECT * FROM PRODUCT
SELECT * FROM productcategory
SELECT * FROM PRODUCTSUBCATEGORY
select * from date 
select * from geography
select * from internetsales

create table date2123 as (select * from date )

delete from date2123 where calendaryear <= 2020

select * from date2123

create table isalesmerged as (
SELECT
    i.*,
    TO_CHAR(CAST(i.orderdate AS TIMESTAMP), 'YYYY-MM-DD') AS formatted_order_date,
    TO_CHAR(CAST(i.shipdate AS TIMESTAMP), 'YYYY-MM-DD') AS formatted_ship_date,
    d.calendaryear AS year,
    d.fiscalyear,
    d.fiscalquarter
FROM
    internetsales i
JOIN
    date d ON d.datekey = CAST(i.orderdatekey AS INTEGER) );

select * from isalesmerged

alter table isalesmerged
DROP COLUMN orderdatekey,DROP COLUMN duedatekey,DROP COLUMN shipdatekey,DROP COLUMN promotionkey,	
DROP COLUMN currencykey,DROP COLUMN totalproductcost,DROP COLUMN orderdate,DROP COLUMN duedate,DROP COLUMN shipdate


---Join Customer and Geography Tables:
create table customergeomerged as (
select c.*,g.city as city ,g.stateprovincename as province,g.englishcountryregionname as country
from customer c 
join geography g on c.geographykey=g.geographykey
)

select * from customergeomerged

-- Remove unwanted columns from the merged customer table
ALTER TABLE customergeomerged
DROP COLUMN title,DROP COLUMN middlename,DROP COLUMN namestyle,DROP COLUMN maritalstatus,	
DROP COLUMN suffix,DROP COLUMN emailaddress,DROP COLUMN yearlyincome,DROP COLUMN totalchildren,DROP COLUMN numberchildrenathome,DROP COLUMN englisheducation,	
DROP COLUMN spanisheducation,DROP COLUMN frencheducation,DROP COLUMN spanishoccupation,DROP COLUMN frenchoccupation,DROP COLUMN houseownerflag,	
DROP COLUMN addressline1,DROP COLUMN addressline2,DROP COLUMN phone;
select * from customergeomerged















--Merge Product, Category, and Subcategory Tables
select p.productkey,pc.englishproductcategoryname as name --,psc.englishproductsubcategoryname
from product p 
left join productcategory pc on p.productkey = pc.productcategorykey

create table productmerged as (
select pc.* ,psc.englishproductsubcategoryname as name ,p.englishproductname,p.productalternatekey,p.productkey 
from productcategory pc 
join productsubcategory psc on pc.productcategorykey = psc.productcategorykey
join product p on p.productsubcategorykey = pc.productcategorykey  
)

select * from  productmerged --1368
SELECT * FROM PRODUCT--606
SELECT * FROM productcategory
SELECT * FROM PRODUCTSUBCATEGORY
