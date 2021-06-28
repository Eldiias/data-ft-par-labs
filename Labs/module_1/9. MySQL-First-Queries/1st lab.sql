use AppStore;
select*
from Apps;

select Prime_Genre  
from Apps;


select distinct Prime_Genre
from Apps;

select prime_genre, count(*)
from Apps
where rating_count_tot>0
group by prime_genre
order by 2 desc
limit 1;


#1)  23 different genres
select count(distinct prime_genre)
from Apps;

#2. Which is the genre with the most apps rated?
Select prime_genre, count(*)
from Apps
where rating_count_tot>0
group by prime_genre
order by 2 desc;


#3) Which is the genre with most apps?
SELECT prime_genre, count(*) 
From Apps
group by prime_genre
order by 2 desc
limit 1;

#4) Which is the one with least?
SELECT prime_genre, count(*) 
From Apps
where rating_count_tot>0
group by prime_genre
order by 2
limit 1;

#5 Find the top 10 apps most rated.
Select *
from Apps
group by rating_count_tot desc
limit 10; 

#6 Find the top 10 apps best rated by users.
Select *
from Apps
order by user_rating DESC, rating_count_tot desc
limit 10;

#7 Take a look at the data you retrieved in question 5. Give some insights.
/* Here we can see the apps thats are rated by the hightest amount of users.
 MOst of the apps are either social networks or games.  
and the fact that a lot users rated it can tell us that those apps are the most installed apps.  
At the same time the more time the people use the app the more likely they gonna score you below 5.
would be hard for them not to have haters./*

#8 Take a look at the data you retrieved in question 6. Give some insights.
/*
 We can see top 10 apps with higher user rating of 5 given highest amount of people scored.  
Most of them are games and the fact that .5 million scored 5.  otherwise cant get score 5.  
indicates some fraud.  Hence, I would restrict those apps from my data.  
/*


#9 Now compare the data from questions 5 and 6. What do you see?
   -We see that the most popular apps for for people to pass the time.  Mainly Either for hobbies, social connection.
   
   
   
#10 
Select avg(user_rating), avg(rating_count_tot), min(user_rating), min(rating_count_tot,  
from apps
Where price =0 


#11
select avg(user_rating), avg(rating_count_tot),  min(user_rating), min(rating_count_tot),max(user_rating), max(rating_count_tot)
from Apps
where price=0;

-That people rate apps higher that are free.  


