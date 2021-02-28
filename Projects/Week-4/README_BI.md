# Business Intelligence with Python

## Content
- [Project Description](#project-description)
- [Project Goals](#project-goals)
- [Technical Requirements](#technical-requirements)
- [Necessary Deliverables](#necessary-deliverables)
- [Presentation](#presentation)
- [Suggested Ways to Get Started](#suggested-ways-to-get-started)
- [Useful Resources](#useful-resources)

## Project Description

Apply data manipulation techniques and visualizations on datasets in Python to derive business intelligence insights

## Process

### Step 1: Data Gathering

The dataset analyzed in this project was the world happiness dataset obtained from Kaggle. 5 datasets were obtained spanning years 2015 - 2019 for 156-158 countries across 10 regions.

### Step 2: Data Cleaning

To perforrm any sort of analysis on these datasets, cleaning was required as there were inconsisencies throughtout each dataset.

Questions the data would be used to answer included:

  - 1- Which Regions ranked highest in overall happiness over the 5 years?<br/>
  - 2- How did global happiness evolve from year to year? Did the world become more or less happy?<br/>
  - 3- Which countries ranked highest or lowest over the years and if so, how did the ranking change over the years?<br/>
  - 4- Did the top and bottom countries remain in rank? if yes/no, why?<br/>
  - 5- How do the happiness indicators vary/correlate globally? Which indicators most affect the happiness ranking?<br/>

To analyze the datasets and answer the above questions, the following steps were carried out:

  - i.    The 5 datasets were imported and converted using pandas to dataframes to facilate cleaning and restructuring.<br/>
  - ii.   Years were added accordingly to each dataframe for time referencing.<br/>
  - iii.  The various dataframe columns renamed as needed to facilitate concatenation.<br/>
  - iv.   Some dataframes (2017-2019) were missing the regions data, thus defining lists of countries for each region. A function was then defined to create the Regions dcolumn in these dataframes and fill the Region as per the country accordingly.<br/>
  - v.    The 5 dataframes are all concatenated and unecessary columns dropped and final dataframe checked to ensure it was the right shape and there were no duplicates nor missiing values.<br/>

### Step 3 & 4: Data Analysis and Visualization

- Question 1: Evoluttion of happiness globally between 2017 to 2019
    - plotting the happiness score for 2017 and 2018 on the same histogram plot and 2018 and 2019 on another histograme plot showed the evolution of happiness globally.
- Question 2: Happiness of the various regions over the years
    - Grouping the dataset by Regions, teh mean of the happiness scores was determined and plotted
- Question 3: Highest and lowest ranking countries over 2017-2019
    - Sorting the data by year and by happiness ranks, the top and bottom 3 countruies determined
- Question 4: Fluctuations in Rnaking
    - The data for the first and last countries were analysed further to assess the impact of the happiness indicators on their ranks.
    - Correlations between the indicators run to determine which factors influenced most the country's rank
- Question 5: Global Happiness and factors affecting it
    - A correlation of the variables was done to determine variables that most affected a country's ranking

### Step 5: Insights

Some of the insigts derived from these datasets are as below:

- The 2019 happiness distribution indicated happier nations compared to previous years generally.
- The top happy regions included Australia and New Zealand, North America and Western Europe and the most unhappy regions were Southern Asia and Sub-Saharan Africa.
- The top 3 coutries varied over the years, though consistent with Finland topping the happineess charts two years running (2018-2019).
- The last 3 countries varied equally, however, South Sudan saw a huge drop in its happiness ranking between 2018 and 2019.
- For Soutth Sudan, it is observed that the Economy adn Freedom are the most influencial when it comes to the happiness ranking of this country. The huge decline in its freedom in 2019 may be a contributing factor to it being the unhappiest country.
- For Finland, rising from 6th to 1st place in 3 years has its marked increase in social support and health and life expectancy increase to thank for that as for this country, these two indicators seem to be the most influencial for it happiness scoring.
- Globally though, 
  - the Generosity and Perceived government corruption have very little influence on the happiness ranking.
  - Freedom and Family have a fairly strong correlation with the happiness scoring thus fairly strongly affects a country's happiness.
  - And finally, the Economy and Health and Life Expectancy have the strongest correlation with teh happiness scoring.
 




