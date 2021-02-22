# Web-Scrapping

## Content
- [Project Description](#project-description)
- [Rules](#rules)
- [Workflow](#workflow)
- [Organization](#organization)
- [Links](#links)

## Project Description

The goal of this project is to perform a data collection from open sources. For this project, Indeed was the website chosen to scrape for analyst positions in Ile-de-France region.

The scrapping was achieved using 'requests' and 'BeautifulSoup' to gather and parse the data from the website. Then pandas library was used to clean the data and finally saved to csv and MySQL for further analysis.

## Work Flow 

### Page Structure

Each page contains 15 job posts.

All the information on this page is coded in HTML(HyperText Markup Language) tags. Right clicking to inspect the page displays the language it is written in.

### How to scrape the page

The next step involed building the code to retrieve information as needed such as job title, salry, locationn, company name, job description.

After scrapping and consolidating the data, it is cleaned and exported to a database as needed.
