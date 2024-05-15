-- most popular transmission

select 
	transmission,
    count(*) Count 
from 
	car
group by
	transmission;

-- ind vs dealers

select 
	seller_type , 
    count(*) count
from
	car
group by 
	seller_type;

-- fuel

select 
	fuel,
    count(*) count
from 
	car
group by 
	fuel;

-- year with most selling car

select
	year,
    count(*) no_of_cars_sold
from
	car
group by
	year
order by 
	no_of_cars_sold desc;

-- most selling car

select 
	name,count(*) units_sold
from
	car
group by
	name 
order by 
	units_sold desc
limit 5;

select 
	brand,count(*) units_sold
from
	car
group by
	brand 
order by 
	units_sold desc
limit 5;

-- owner

select 
	owner,count(*) sales
from
	car
group by 
	owner
;

-- KM vs sales

SELECT
    CASE
      WHEN km_driven >= 0 AND km_driven <= 10000 THEN '0-10000'
        WHEN km_driven > 10000 AND km_driven <= 50000 THEN '10001-50000'
        WHEN km_driven > 50000 AND km_driven <= 100000 THEN '50001-100000'
        WHEN km_driven > 100000 AND km_driven <= 150000 THEN '100001-150000'
        WHEN km_driven > 150000 AND km_driven <= 200000 THEN '150001-200000'
        ELSE 'Above 200000'
    END AS KM_Range,
    COUNT(*) AS Unit_sold
FROM
    car

GROUP BY
   KM_Range
ORDER BY
    MIN(km_driven);
        







	