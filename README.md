# SFUBook

CMPT 276 Project

Heroku link: https://awesome-276-sfu-book.herokuapp.com/

Heroku git link: https://git.heroku.com/awesome-276-sfu-book.git

# Project Abstract
## Summary
SFU Pre-Plan is a web application designed to provide users with a simplified way to plan the courses they want. This web app will effectively reduce the time spent looking for web pages that display information about SFU courses. Moreover, a simplified and interactive will display course relations in the form of a tree and every node carries further information about the course. User’s will be able to view a program’s entire course dependency or select courses to view specific respective prerequisites and corequisites. A user portal will be available to those who wish to register with SFU Pre-Plan in order to be able to save any schedules or plans which they have created. SFU Pre-Pan will achieve this through APIs that grab data from SFU websites and a parser which will extract the relevant data. Furthermore, our motivation to develop an application such as this stems from the quality of the only platform that displays course information, which is go.sfu. The offered webpages are tedious to navigate and are fairly counter-intuitive in their display of courses. SFU Pre-Plan will enable users to view course relations in a tree like format in order to simplify the planning procedure of SFU students.

## Features
API to grab data from SFU’s web pages
Parse for specific data (ie. course pre-/co-requisites)
Interactive UI to display all course relations or selected course relation in the form of a tree
User registration that collects user information; username, email address, password, type of user (ie. 1st yr, 2nd yr, … , professor, other  - strictly for usage statistics)
Ability for users to save results
Ability for users to edit/modify/delete results
Select courses and see their relations to other courses

## Customer
The demographic which will be targeted are to be any SFU students or prospective students who wish to plan their course loads. Due to the interactive and simple UI of this application, those who are just curious about course requirements and relations between courses, or even an entire program may visit the website to gain further information. Customers are not required to register for an account but in doing so it will allow them to save their queries to a personal profile, for them to revisit or edit at a later time. The app will initially target SFU students but will be designed such that other schools can utilize the same features.

## Competitive Analysis
### SFU
The largest competitor in the market of this application is Simon Fraser’s web applications. SFU allows users to view course related information including course title, description, outline for a specific semester and it’s requirements from their web page at https://www.sfu.ca/students/calendar/2019/summer/courses.html. Moreover, to plan a course load a user opens a link for each course that they are interested in and then visit each course page under the original page in order to check if they have met the pre-/co-requisite requirements. This is a tedious and cumbersome process which a student might have to repeat multiple times or even be forced to draw tree diagrams on a piece of paper. Moreover, SFU also provides a service allowing students to view course descriptions and pre-/co-requisite requirements on their student portal go.sfu.ca but the same problem exists, the user has to navigate multiple links and relate courses themselves. Furthermore, the UI for both of these SFU sponsored platforms are outdated and not visually informative. SFU Pre-Plan will provide a visual description of how courses relate to each other. An interactive graphical UI which will display courses for programs in a tree like structure will significantly simplify the task of course planning for SFU students.
