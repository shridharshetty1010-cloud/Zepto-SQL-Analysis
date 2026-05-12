

create table zepto(
sku_id serial primary key,
category varchar(120),
name varchar(150) not null,
mrp numeric (8,2),
discountPercent numeric (5,2),
availableQuantity integer,
discountedSellingPrice numeric(8,2),
weightInGms integer,
outOfStock boolean,
quantity integer
);



-- data exploration 

-- count of rows

select count(*) from zepto;

-- sample data 

select * from zepto 
limit 10

-- null values

select * from zepto
where name is null
or
category is null
or
mrp is null
or
discountpercent is null
or
availablequantity is null
or
discountedsellingprice is null
or
weightingms is null
or
outofstock is null
or
quantity is null;

-- diffrent product categories

select distinct category from zepto
order by category

-- products in stock

select outofstock, count(sku_id)
from zepto
group by outofstock;

-- product name present multiple times

select name, count(sku_id) as "number of SKUS"
from zepto
group by name
having count(sku_id)>1
order by count(sku_id) desc;

-- Data Cleaning 
-- products with price = 0

select * 
from zepto
where mrp =0 or discountedsellingprice = 0;

delete from zepto 
where mrp = 0;

-- convert paise to rupees

update zepto
set mrp = mrp/100.0,
discountedsellingprice = discountedsellingprice/100.0;

select mrp,discountedsellingprice from zepto


-- 1. find the top 10 best value products based on the discount percentage.

select distinct name,mrp,discountpercent
from zepto
order by discountpercent desc
limit 10;


-- 2. what are the products with high mrp but out of stock.

select name ,mrp
from zepto 
where outofstock = true and mrp>300
order by mrp desc;

-- 3. calculate estimated revenue for each category

select category ,
sum(discountedsellingprice * quantity) as total_revenue
from zepto
group by category
order by total_revenue;

-- 4.identify all the products where mrp is grater than 500 and discount is less than 10%

select distinct name,mrp,discountpercent 
from zepto
where mrp> 500 and discountpercent< 10
order by mrp desc,discountpercent desc;

-- 5.identify the top 5 categories offering the highest average discount percent.

select category, 
round(avg(discountpercent),2) as avg_discount
from zepto
group by category
order by avg_discount desc
limit 5;

-- 6.find the price per gram for products above 100 grams and sort by best value.

select distinct name,weightingms,discountedsellingprice,
round(discountedsellingprice/weightingms,2) as price_per_gram
from zepto
where weightingms >=100
order by price_per_gram;

-- 7.Group the products into categories like low, medium, bulk

select distinct name,weightingms,
case when weightingms < 1000 then 'low'
      when weightingms < 5000 then 'medium'
	   else 'bulk'
	   end as weight_category
from zepto;

-- 8.what is the total inventory weight per category

select category,
sum(weightingms * availablequantity) as total_weight
from zepto
group by category
order by total_weight;


