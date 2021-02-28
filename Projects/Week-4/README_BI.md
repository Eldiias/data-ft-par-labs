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

1- Which Regions ranked highest in overall happiness over the 5 years?<br/>
2- How did global happiness evolve from year to year? Did the world become more or less happy?<br/>
3- Which countries ranked highest or lowest over the years and if so, how did the ranking change over the years?<br/>
4- Did the top and bottom countries remain in rank? if yes/no, why?<br/>
5- How do the happiness indicators vary/correlate globally? Which indicators most affect the happiness ranking?<br/>

To analyze the datasets and answer the above questions, the following steps were carried out:

i.    The 5 datasets were imported and converted using pandas to dataframes to facilate cleaning and restructuring.<br/>
ii.   Years were added accordingly to each dataframe for time referencing.<br/>
iii.  The various dataframe columns renamed as needed to facilitate concatenation.<br/>
iv.   Some dataframes (2017-2019) were missing the regions data, thus defining lists of countries for each region. A function was then defined to create the Regions dcolumn in these dataframes and fill the Region as per the country accordingly.<br/>
v.    The 5 dataframes are all concatenated and unecessary columns dropped and final dataframe checked to ensure it was the right shape and there were no duplicates nor missiing values.<br/>

### Step 3: Data Analysis and Visualization





