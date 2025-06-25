show databases;

use BLINKIT;

select * from blinkit;

select item_identifier from blinkit;
select count(item_identifier) from blinkit;

select max(item_weight) from blinkit;
select min(item_weight) from blinkit;
select avg(item_weight) from blinkit;

select count(item_fat_content) from blinkit
where item_fat_content = 'low fat';

select count(item_fat_content) from blinkit
where item_fat_content = 'regular';

select max(item_MRP) from blinkit;

select min(item_MRP) from blinkit;

select item_identifier,item_fat_content,item_type,item_mrp from blinkit
where item_mrp > 200;

select max(item_mrp) from blinkit where item_fat_content = 'low fat';
select min(item_mrp) from blinkit where item_fat_content = 'low fat';

select * from blinkit where item_mrp between 50 and 100;

select count(distinct(item_fat_content))from blinkit;

select count(distinct(item_type))from blinkit;

select * from blinkit order by item_mrp desc;

select * from blinkit order by item_outlet_sales asc;

select * from blinkit order by item_type asc;

select * from blinkit where item_type in ('dairy' ,  'meat' );

select count(distinct(outlet_size))from blinkit;

select count(distinct(outlet_location_type ))from blinkit;

select count(distinct(outlet_type ))from blinkit;

select item_type , count(*) from blinkit 
group by item_type order by item_type desc;

select outlet_size , count(*) from blinkit 
group by outlet_size order by outlet_size asc;

select outlet_type  , count(*) from blinkit
group by outlet_type order by outlet_type asc;

select outlet_location_type , count(*) from blinkit
group by outlet_location_type order by outlet_location_type asc;

select item_type, min(item_mrp ) from blinkit
group by item_type;

select item_type, max(item_mrp ) from blinkit
group by item_type;

select Outlet_Establishment_Year, min(item_mrp) from blinkit
group by outlet_establishment_year order by outlet_establishment_year desc;

#31
select Outlet_Establishment_Year, max(item_mrp) from blinkit
group by outlet_establishment_year order by outlet_establishment_year desc;

select outlet_size, avg(item_mrp) from blinkit
group by outlet_size  order by outlet_size desc;

select outlet_type, avg(item_mrp) from blinkit
group by outlet_type  order by  outlet_type asc;

select outlet_type, max(item_mrp) from blinkit
group by outlet_type ;

select item_type, max(item_weight) from blinkit
group by item_type ;

select outlet_establishment_year , max(item_weight) from blinkit
group by outlet_establishment_year ;

select outlet_type , min(item_weight) from blinkit
group by outlet_type;

select outlet_location_type, avg(item_weight) from blinkit
group by outlet_location_type
order by outlet_location_type desc;

select item_type, max(item_outlet_sales) from blinkit
group by item_type;

select item_type, min(item_outlet_sales) from blinkit
group by item_type;

select outlet_establishment_year , min(item_outlet_sales) from blinkit
group by outlet_establishment_year ;

select outlet_establishment_year , max(item_outlet_sales) from blinkit
group by outlet_establishment_year 
order by outlet_establishment_year desc;

select outlet_size , avg(item_outlet_sales) from blinkit
group by outlet_size 
order by outlet_size desc;

select outlet_type , avg(item_outlet_sales) from blinkit
group by outlet_type ;

select outlet_type , max(item_outlet_sales) from blinkit
group by outlet_type ;

select item_type, sum(item_outlet_sales) from blinkit
group by item_type;

select item_type, sum(item_outlet_sales) from blinkit
group by item_fat_content ;

select item_type, max(item_visibility) from blinkit
group by item_type ;

select item_type, min(item_visibility) from blinkit
group by item_type ;

select item_type, sum(item_outlet_sales) from blinkit
where outlet_location_type = 'tier 1'
group by item_type;

select item_type, sum(item_outlet_sales) from blinkit
where item_fat_content  in  ('Low fat', 'lf')
group by item_type;







