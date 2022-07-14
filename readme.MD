Application Process

# Story

Handling the application process at K has always been a tedious task. Finally the HR department figured out that using only Python and long lists can not go on if they want to get information quickly. To improve on data management, they collaborate with you to test out something they just heard about: "databases".

Luckily they managed to assemble a database which can be described by the Entity-Relationship Diagram below:

application process assignment.png

They need your help to to write application which runs queries on this database so they can quickly get information about Applicants and Mentors.

The HR department wants answers to the following questions:

# What are you going to learn?

SQL basic commands (SELECT, UPDATE, DELETE, INSERT)
executing SQL queries from python
showing the results on a web page with jinja2 template engine
CSS basics

# Tasks

1. We already have a list where we can see every mentor in K on the /mentors route but we need to extend it a little.
Unfortunately we have a bug and the Filter by mentor last name feature is not working. Fix this feature so when we search for the last name "Simpson" for example we get:
Bart Simpson - Budapest
Homer Simpson - Warsaw
Lisa Simpson - Budapest

2. On this /mentors page created a separate form somewhere. There there should be a submit button in it and a <select name="city-name"> tag with five city options: Bucharest, Budapest, Kraków, Miskolc and Warsaw.
Submitting the form with Miskolc selected we should jump to /mentors?city-name=miskolc url and this page should by default list four mentors:
Bugs Bunny - Miskolc
Bob Sponge - Miskolc
Yogi Bear - Miskolc

3. We had chat with an applicant, some Jemima. We don't remember her name, but she left her hat at the school. We want to call her to give back her hat. To look professional, we also need her full name when she answers the phone.

4. On the main page (/) you created a separate form inside the <section class="search"> tag, there is one input with applicant-name name attribute and a submit button in it.
Submitting the form with the name Jemima we get a result page on the /applicants-phone route. This page should by default list two applicants:
Name: Arnold Jemima, Phone number: 003620/423-4261
Name: Jemima Foreman, Phone number: 003620/834-6898

5. In the data_manager.py there is a get_applicant_data_by_name function that returns a list of dictionaries with full_name and phone_number keys for the found applicants.
We called Jemima and she said it's not her hat. It belongs to another girl, who went to the famous Adipiscingenimmi University. You should write a query to get the same information like with Carol, but for this other girl. The only thing we know about her is her school e-mail address ending: adipiscingenimmi.edu

6. On the main page (/) you created a separate form inside the <section class="search"> tag, there is one input with email-ending name attribute and a submit button in it.
Submitting the form with the email ending of adipiscingenimmi.edu we get a result page on the /applicants-phone route. This page should by default list one applicant:
Name: Jane Forbes, Phone number: 003670/653-5392
In the data_manager.py there is a get_applicant_data_by_email_ending function that returns a list of dictionaries with full_name and phone_number keys for the found applicants.
The recrouters would like to see all the applicants on one page with every data we know about them.

7. There is a link to the /applicants route from the main page in the <nav> tag.
On this new /applicants page all our applicants are listed in a well formed table.
In the data_manager.py there is a get_applicants function that returns a list of dictionaries with first_name, last_name, phone_number, email and application_code keys for all applicants.
Ursa William, an applicant called us, that her phone number changed to: 003670/223-7459. For this we need a new page where we can see her details and update her phone number.

8. There is a link to every applicant in the table at the /applicants route, the new link should look like this: /applicants/91220, where the number is the application code of the applicant, in this example Ursa William.
On this new /applicants/<code> page every detail is shown for the applicant who's application code is the <code> part of the url.
On this page you have created a form with POST method and the action should be the same page it is on. In this form there is one input with new-phone name attribute and a submit button.
When you submit the form you should save the new phone number, write an UPDATE query, that changes this data in the database for this applicant. At the end redirect back to the same page so when you refresh the page it does not want to re-send the POST request with the data.

9. Create a Delete applicant link on this page, it should point to the /applicants/<code>/delete url. The <code> part of the url should be an application code (eg: /applicants/91220/delete). When clicked the given applicant should be deleted and we are redirected to the /applicants page.
Arsenio, an applicant called us, that he and his friend applied to K. They both want to cancel the process, because they got an investor for the site they run: mauriseu.net Write a DELETE query to remove all the applicants, who applied with emails for this domain (e-mail address has this domain after the @ sign).

10. On the /applicants page you created a form with POST method after the table. There is one input with email-ending name attribute and a submit button in it.
Submitting the form with the email ending of mauriseu.net all applicants get deleted who's email end with this domain. After that we are redirected to the /applicants page.
After this call a new applicant appeared at the school and he wants to get into the application process. His first and last name is Markus Schaffarzyk, has a number: 003620/725-2666 and e-mail address: djnovusgroovecoverage.com Our generator gave him the following application code: 54823.

11. There is a link to the /add-applicant page somewhere on the /applicants page.
On the /add-applicant page you created a form with POST method with an input field for every data and a submit button in it.
After submitting the form and INSERTing the data redirect to this applicants page (use the unique application code for the url)
Your task here is to create a special design for the Flask app. Of course you don't have to create such beautiful designs with lots of images and artwork, the purpose of the task is to practice the newly acquired CSS knowledge. You can use the already created main.css file.

12. Create a design where you use at least the following CSS selectors:

* body, h1, footer
* id selector
* few class selectors
* selector which selects tags inside another tag
* selector which changes different elements at once (for this you can use comma as a separator)
* Please use at least these properties while altering the design:
* font-family, color, background-color, text-align
* padding, margin, width, height, top, left
* display, position

Remember, the goal is to practice CSS, so we don't require you to spend tens of hours to create a wonderful design, but if you want to, you can unleash your inner creativity dragon just make sure you do that after everything else :)

# General requirements

None

# Hints

You can find the sql file with the sample data in the data folder in the git repo. To use it, create a new database for this project and use psql to execute the SQL commands in that file:
Start psql in a terminal at the data folder of the project
Connect to your already created new database eg. \connect application_process
Execute the commands in the sql file \i application_process_sample_data.sql
For the full_name you need a concatenation in your query, instead of having the name in 2 different columns in the result.

# Background materials

 Best practices for Python/Psycopg/Postgres
Installing and setting up PostgreSQL
Installing psycopg2
Setting up a database connection in PyCharm
Short guide about psql
PostgreSQL documentation page about psql
 Introduction to HTML
 Pip and VirtualEnv
 A web-framework for Python: Flask
 Flask documentation (the Quickstart gives a good overview)
 Jinja2 documentation
 htmlreference.io
 HTML tutorials and references on MDN