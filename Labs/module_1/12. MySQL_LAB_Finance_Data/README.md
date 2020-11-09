![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | MySQL Select

## Introduction

In this lab you will practice how to import a database into MySQL and obtain interesting insights. **You will use the `finance` database that you can download [here](https://srv-file5.gofile.io/download/4OZZC5/finance.zip).

You will create a `solutions.sql` file in the `your-code` directory to record your solutions to all challenges.

## Challenge 1 - What is the most successful district?

In this challenge you will write a query to calculate how many accounts were created in each district. Your output should have at least the following columns:

* `district id` - the ID of the district
* `ac_freq` - number of accounts in district

You need to select Top 5 districts.
Your output will look something like below:

![Challenge 1 output](challenge-1.png)

## Challenge 2 - How many people changed their place of residence?

We assume that people move out from their places if they start paying more for their appartment. Find all those people.

![Challenge 1 output](challenge-1.png)

## Challenge 3 - Best Selling Districts

Now we take a look from the bank perspetive. Manager wants to know what are the districts that managed to sell the most expensive loans. You need to define the clients that pay the highest amount as loan payment and then detect in which district they opened their accounts.

Requirements:

* Your output should have the following columns:
	* `Account ID`
	* `Amount`
	* `District ID`
* Your output should be ordered based on `Amount` from high to low.

## Challenge 4 - Best Selling Districts UPDATED

When your Manager received the results of previous query he said that results are wrong. How come you decided that district can be represented by the best client? Best clients are usually outliers, therefore they are not a good measurement for branch, but for seller. 

After discussion with your colleagues you decided to calculate the total amount paid as a loan payment per district. 

## Challenge 5 - Best Selling Districts UPDATED

When your Manager received the results of previous query he said that results are wrong. Total sum of payments is very biased by outliers. Therefore you decided to calculate the average and median amounts paid as a loan payment per district. 

## Bonus Challenge - Salary/Loan balance

Special Social Comitee arrived at your bank and wants to see whether you provide support to poor areas. 
Detect the Average Salary/ Average Loan/ Average Insurance balance in every district. 

## Deliverables

* `solution.sql` that contains all your MySQL queries.

## Submission

* Add `solutions.sql` to git
* Commit your code
* Push to your fork
* Create a pull request to the class repo