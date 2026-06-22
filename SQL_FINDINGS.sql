select 
shift_type, count(*) as total_shifts,
round(avg(actual_sales),2) as avg_actual_sales
from shifts_sales
group by shift_type
order by avg_actual_sales desc;

/* Which day of the week has the most sales */
select day_of_week,shift_type,
round(avg(actual_sales),2) as avg_actual_sales 
from shifts_sales
group by day_of_week,shift_type
order by avg_actual_sales desc;

/* What are the avg sales in friday dinner */
select day_of_week,shift_type,
avg(actual_sales)
from shifts_sales
where day_of_week = "Friday" and shift_type = "dinner";

/* How much waste is produced in different day_types */
select day_type, (round(sum(actual_waste_pct) / count(*) * 100,2)) as waste_percentage
from waste
group by day_type
order by waste_percentage desc;

/* Does Rain reduce sales */
select * from shifts_sales;
select * from waste;

/* What is the average labour cost for each shift type along with the average sales?*/
select l.shift_type,
avg(ss.actual_sales) as avg_actual_sales,
avg(l.actual_labour_cost) as avg_actual_lbr_cost
from shifts_sales ss
inner join labour l
on ss.date = l.date
and ss.shift_type = l.shift_type
group by l.shift_type;

/* Find the average sales and average waste cost for each day_type */
select ss.day_type,
round(avg(ss.actual_sales),2) as avg_actual_sales,
round(avg(w.actual_waste_cost),2) as avg_waste_cost
from shifts_sales ss
inner join waste w
on ss.date = w.date
and ss.shift_type = w.shift_type
group by ss.day_type;

/*  does weather actually impact our sales significantly? */
select weather,
count(*) as total_shifts,
round(avg(actual_sales),2) as avg_actual_sales,
round(avg(target_sales),2) as avg_target_sales,
round(sum(actual_sales),2) as total_sales
from shifts_sales
group by weather
order by avg_actual_sales desc;

/*  Which shifts are most efficient — and which ones go over budget? */
select shift_type,
round(avg(actual_labour_pct) * 100,2) as avg_labour_pct,
round(avg(target_labour_pct) * 100,2) as target_labour_pct,
round(avg(labour_variance),2) as avg_labour_variance,
sum(case when labour_variance > 0 
then 1 else 0 
end) as over_budget_shifts,
count(*) as total_shifts
from labour
group by shift_type
order by avg_labour_pct desc;

/* Which shifts waste the most and why? */
select shift_type,
waste_reason,
round(avg(actual_waste_pct) * 100,2) as actual_waste_pct,
round(avg(actual_waste_cost),2) as actual_waste_cost,
round(sum(actual_waste_cost),2) as total_waste_cost
from waste
group by shift_type,waste_reason
order by total_waste_cost desc;

/* On which shifts were sales high, waste high, AND labour over budget at the same time?*/
SELECT
    s.date,
    s.shift_type,
    s.day_type,
    s.weather,
    ROUND(s.actual_sales, 2)        AS actual_sales,
    ROUND(l.actual_labour_pct*100,2) AS labour_pct,
    ROUND(w.actual_waste_pct*100,2)  AS waste_pct,
    ROUND(l.labour_variance, 2)      AS labour_variance,
    ROUND(w.waste_variance, 2)       AS waste_variance,
    w.waste_reason
FROM shifts_sales s
JOIN labour l
    ON s.date = l.date
    AND s.shift_type = l.shift_type
JOIN waste w
    ON s.date = w.date
    AND s.shift_type = w.shift_type
WHERE l.labour_variance > 0
    AND w.waste_variance > 0
ORDER BY s.actual_sales DESC
LIMIT 20;