create database vivino;

select *
from acidity;

select *
from body;

select *
from appelations;

select *
from countries;

select * from critics;

select * from grapes;

select * from meat_info;

select * from merchants;

select * from prices;

select count(*) from vintages;

select count(*) from wine;

select count(distinct id) from vintages;

select count(distinct wine_name) from wine;

#what food goes with different wine
select wine_id, name
from meat_wine mw
inner join meat_info mi
on mw.food_id=mi.id;

select wine_id, group_concat(distinct name)
from meat_wine mw
inner join meat_info mi
on mw.food_id=mi.id
group by wine_id;

#top 10 wines that match everything
select wine_id, group_concat(distinct name), count(distinct name)
from meat_wine mw
inner join meat_info mi
on mw.food_id=mi.id
group by wine_id
order by 3 desc
limit 10;

/*we can see that there is a wine that matches 9 different type of food. That is quite unexpected result, 
so lets see what is this wine 
*/

select * from wine where wine_id=47154;

select count(wine_id)
from wine
group by type;
#3392 vs 208
select type, count(distinct wine_id)
from wine
group by type;
#690 vs 104

#how many datapoints do we have per country
select country, count(distinct wine_id)
from wine
group by country
order by 2 desc;

select *
from wine
where country is null;

select * from countries;

# avg price of wine in the supermarket per country
select w.country, round(avg(price),2) as price, round(max(price),2) as maxprice, round(min(price),2) as minprice
from prices p
inner join vintages v on p.vintage_id=v.id
inner join wine w on v.wine_id=w.wine_id
group by w.country
order by 4 desc;