![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

Please, connect to the Data Bootcamp Google Database using the credentials provided in class. Choose the database called *appleStore*. Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

**1. What are the different genres?**23 different genres

**2. Which is the genre with the most apps rated?**  GAMES

**3. Which is the genre with most apps?** GAMES

**4. Which is the one with least?** Catalogs

**5. Find the top 10 apps most rated.** 
FaceBook, 
insta, 
clash of clans, 
temple run, 
pandora, 
pinterest,
Bible, 
candy crush saga, 
SPotify music, 
angry birds. 

**6. Find the top 10 apps best rated by users.**   
Head soccer
Plants vs. Zombies
Sniper 3D Assassin: Shoot to Kill Gun Game
Geometry Dash Lite
Infinity Blade
Geometry Dash
Domino's Pizza USA
CSR Racing 2
Pictoword: Fun 2 Pics Guess What's the Word Trivia
Plants vs. Zombies HD

**7. Take a look at the data you retrieved in question 5. Give some insights.**
	 MOst of the apps are either social networks or games.  
	and the fact that a lot users rated it can tell us that those apps are the most installed apps.  
	At the same time the more time the people use the app the more likely they gonna score you below 5.


**8. Take a look at the data you retrieved in question 6. Give some insights.**
	 We can see top 10 apps with higher user rating of 5 given highest amount of people scored.  
	Most of them are games and the fact that .5 million scored 5.  otherwise cant get score 5.  
	indicates some fraud.  Hence, I would restrict those apps from my data. 

**9. Now compare the data from questions 5 and 6. What do you see?**
      We see that the most popular apps for for people to pass the time.  Mainly Either for hobbies, social connection.


**10. How could you take the top 3 regarding both user ratings and number of votes?**
Select avg(user_rating), avg(rating_count_tot), min(user_rating), min(rating_count_tot,  
from apps
Where price =0 

**11. Do people care about the price of an app?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
select avg(user_rating), avg(rating_count_tot),  min(user_rating), min(rating_count_tot),max(user_rating), max(rating_count_tot)
from Apps
where price=0;

That people rate apps higher that are free.  

## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
