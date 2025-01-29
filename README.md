<a id="readme-top"></a>
# Big-Al-Invitational-2024 (Friday Finals)

<p align="right">Author: deeschoi | Date: 01/26/2025</p> 

<p align = "center"><img src="https://github.com/user-attachments/assets/2a8ac552-6c02-4cca-90fc-bdacfc9aec68" width="500" />

This personal project tested and demonstrates my understanding of using SQL to analyze information derived from a larger data set. It allowed me to practice and improve my proficiency in extracting specific data that could be applied to real world scenarios involving large companies or businesses.  

## About

The data used in this SQL project is from a Division 1 college swim meet I attended and competed at in December of 2024. All data used in these SQL files were extracted from the internet, entered into an excel file, cleaned, and converted to a CSV file before being inputted into the actual code.  
Currently, this project contains information regarding all swimmers present at the meet from all four schools in attendance (*Columbia University, George Washington University, University of Pennsylvania, & Princeton University*), a list of races(events) that took place during the finals session on Friday, the complete final results of all Friday events, and information regarding the pool records for said events.  
*The software that is being used to run the SQL queries provided is **MySQL Workbench**.* <img src="https://github.com/user-attachments/assets/2ddc088d-3ad6-45b3-82f4-3023de0022ed" width = "95"/>


## Project Contents

This repo contains files that `CREATE TABLE` for **swimmers**, **EventList**, **results**, and **records**. There is an additional file that demonstrates the use of a variety of different SQL to answer the hypothetical questions I came up with:
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

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Conclusion

This four day long project was created to challenge my current SQL skills and familiarize myself with using real world data. I wanted to explore the processes behind various softwares that manage swimming related information (e.g., swimmer databases, meet result publications) and used this as an opportunity to utilize my SQL knowledge to create complex queries capable of present the desired outcomes.  
The questions I devised and answered, while centered around the swim meet, were intentionally designed to mimic potential questions that companies or clients may present to a data analyst.  
One of the challenges I encountered was quickly determining the appropriate key to use  when combining information across different datasets. This led me to research the "JOIN...ON..." query being used in different examples, allowing me to continue solving the questions I had tasked upon myself.  
Although I have completed the challenges I set for this project, it currently contains data only for the events swum during the Friday finals session. Moving forward this semester, I plan to continue adding information for the events swum on Saturday and Sunday with the goal of making this project fully comprehensive for all final sessions of the swim meet.
