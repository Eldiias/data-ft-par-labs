<img src="https://bit.ly/2VnXWr2" alt="Ironhack Logo" width="100"/>

# Statistically Significant Insights

## Content
- [Project Description](#project-description)
- [Project Goals](#project-goals)
- [Technical Requirements](#technical-requirements)
- [Necessary Deliverables](#necessary-deliverables)
- [Presentation](#presentation)
- [Suggested Ways to Get Started](#suggested-ways-to-get-started)
- [Suggested Steps for Data Processing](#suggested-steps-for-data-processing)


## Project Description

The goal of this project is for you to apply the things that we have learned in the previous lessons about Descriptive and Inferential Statistics, Business Intelligence and Linear Regression, derive some interesting insights and test their statistical significance.

For this project you will need to choose a dataset and explore it using Python. You will put together a Story using different visualizations for presentation showing the insights you have derived from the data (Tableau is accepted). You will have to define and test several hypothesis based on insights you've derived.  You should demonstrate your proficiency using Python and the concepts you have learned throughout the chapter. 

**You will be working in groups for this project**, so get ready for GitHub manipulations and team work. Nevertheless, we'll be guiding you along the process and helping you as you go. Show us what you've got!

---


## Project Goals

During this project you will:

- Manage collaborative git repository.
- Improve your team work skills.
- ***Divide et impera*** - Manage yourself given the team progress. Build your own code from scratch.
- Put into practice data processing concepts learned so far.
- Perform inferential analysis to test your hypotheses.
- Build your first Linear Regression model and test its assumptions.
- Practice public presentations skills.

## Technical Requirements

### Note: Make sure you have one dependent variable which is continuous in your dataset. 

The technical requirements for this project are as follows:
* In order to keep your knowledge fresh, you will need to collect at least 1 column with web scraping. 
* You must construct a Story using visualizations consisting of at least 5 different plots for the data set you have chosen.
* You need to test majority of your insights with hypothesis testing techniques.
* You need to build a Linear Regression model and test it's assumptions. Try to meet most of the assumptions.
* Save the file in the inferential-project in GitHub, and your data should be saved to a folder named data.
* You should also include a README.md file that describes the steps you took, your thought process as you built your visualizations


## Necessary Deliverables

The following deliverables should be pushed to your Github repo for this chapter.

* **A Jupyter notebook uploaded to GitHub**.
* **A data folder** containing the data set you used for your project.
* **A ``README.md`` file**.

## Presentation

The presentation time limit is **20 minutes**! You will have **15 minutes** to present your project to the class and then **5 minutes** for Q&A.

The slides of your presentation must include the content listed below:

- Title of the project + Student name
- Description of your idea and project
- Plots and insights for them
- Challenges
- Process
- Learnings
- If I were to start from scratch...
- Improvements
- Highlights

Tip: you have only 15 minutes for this presentation so keep it simple!

## Suggested Ways to Get Started

- **Examine the data and come up with a deliverable** before diving in and applying any manipulation methods. Specify the specific task beforehand. You will probably spend less time on project if you specify the task and expected outcomes beforehand. Raise questions, come up with some hypotheses to be tested.
- **Break the project down into different steps** - use the topics covered in the lessons to form a check list, add anything else you can think of that may be wrong with your data set, and then work through the check list.
- **Use the tools in your tool kit** - your knowledge of intermediate Python as well as some of the things you've learned in previous chapters. This is a great way to start tying everything you've learned together!
- **Work through the lessons in class** & ask questions when you need to! Think about adding relevant code to your project each night, instead of, you know... *procrastinating*.
- **Commit early, commit often**, don’t be afraid of doing something incorrectly because you can always roll back to a previous version.
- **Consult documentation and resources provided** to better understand the tools you are using and how to accomplish what you want.

## Suggested Ways to Get Started

* **Find a data set to process** - a great place to start looking would be [Awesome Public Data Sets](https://github.com/awesomedata/awesome-public-datasets) and [Kaggle Data Sets](https://www.kaggle.com/datasets).
* **Explore the data set** and come up with a variety of visualizations that you can potentially include in your story.
* **Break the project down into different steps** - identify the entities/dimensions in your data set, explore them each individually, and then progress to analyzing different combinations of them.
* **Use the tools in your tool kit** - the concepts and methods you have learned in the business intelligence chapter as well as some of the things you've learned in previous chapters. This is a great way to start tying everything you've learned together!
* **Work through the lessons in class** & ask questions when you need to! Think about adding relevant code to your project each night, instead of, you know... _procrastinating_.
* **Commit early, commit often**, don’t be afraid of doing something incorrectly because you can always roll back to a previous version.
* **Consult documentation and resources provided** to better understand the tools you are using and how to accomplish what you want.

## Suggested Steps for Data Processing

- Explore data and understand what the fields using pandas functions like info(), describe() etc...

- Examine the relationships between dependent variable and other features. Use data visualization techniques to help you gain intuitive understanding of the relationships.

- Make informed guess on which features should be investigated in depth.

- Data cleaning & manipulation. Apply the following techniques as appropriate:
    * Adjust skewed data distribution.
    * Deal with columns with high proportion of missing values.
    * Deal with records/rows with missing values.
    * Feature reduction. [Reduce or drop columns. But make sure you've valid explaination before droppping]
    * Convert categorical data to numerical.
- Build your model iteratively. Your data most likely won't meet most of the assumptions. Try feature transformation and reduction iteratively to achieve the best model.
- Present your findings in statistical summary and/or data visualizations.