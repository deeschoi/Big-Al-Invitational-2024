<a id="readme-top"></a>
# Big-Al-Invitational-2024 (Friday Finals)

<p align="right">Author: deeschoi | Date: 01/26/2025</p> 

<p align = "center"><img src="https://github.com/user-attachments/assets/2a8ac552-6c02-4cca-90fc-bdacfc9aec68" width="500" />

This personal project tested and demonstrates my understanding of using SQL to analyze information derived from a larger data set. It allowed me to practice and improve my proficiency in extracting specific, desired pieces of data that could be applied to real world scenarios involving large companies or businesses.  

## About

The data used in this SQL project is from a Division 1 college swim meet I attended and competed at in December of 2024. All data used in these SQL files were searched, extracted from the internet, entered into an excel file, cleaned, and converted to a CSV file before being inputted into the actual code.  
Currently, this project contains information regarding the all swimmers present at the meet from all four schools in attendance (*Columbia University, George Washington University, University of Pennsylvania, & Princeton University*) and the races that were swum during the finals session on Friday.  

*The software that is being used to run the SQL queries provided is **MySQL Workbench**.*

## Project Contents

This repo contains files that `CREATE TABLE` for **swimmers**, **EventList**, **results**, and **records**. There is an additional file that demonstrates the use of a variety of different SQL to answer the following questions:
1. List swimmers in alphabetical order by school, with schools arranged alphabetically. Within each school, list all women first, followed by men, both sorted alphabetically.
2. Count the number of swimmers from each school.
3. Display swimmers from Pennsylvania women's team in alphabetical order and display count at the top.
4. Count the number of swimmers from each state in the US. List them from states with the highest to lowest frequency.
5. Display only international swimmers and what events they swam on Friday in alphabetical order. List the women first, then men.
6. Read results for only men's events.
7. Show any swimmers that broke a record and the time that they went.
8. Display swimmers that got either a "Division I A" or "Division I B" time achievement. State the specific event, swimmer name, school, country, and time as well
   
Each query demonstrates the necessary skills required to store, retrieve, and manipulate data in relational databases in real life scenarios.  

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Purpose

This project was undertaken in order to provide a relational database that would be useful to a niche audience as well as simultaneously training essential SQL skills that would be utilized when working with any large dataset.  
Users of this database can utilize the SQL commands provided to extract diverse and specific information such as swimmer background (ranging from what university they attend to the hometown they are from), view complete results of the races that evening, or filter times that broke pool records.  
Ultimately, this project provided me with valuable hands on experience in data management and analysis, offering a practical tool that can serve to be useful within a topic that I am passionate about while helping me develop skills that can be implemented in real scenarios.  

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Installation and Usage

Prior to running any queries, I needed to download each *.csv* file and import them into **MySQL Workbench** using the a built-in function called *"Table Data Import Function"*. These steps must be followed if other users wish to test the queries themselves.  
Should users run into any issue importing the *.csv* files, they may alternatively convert them into *.JSON* format and import them into **MySQL Workbench**.

## Conclusion
