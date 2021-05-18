# Project Title
## Rock, Paper, Scissors, Lizard, Spock

# User Stories

As a user<br>
So that i can see the webistes I regularly visit<br>
I want to be able to see a list of bookmarks

|            Object               |            Method               |
|:-------------------------------:|:-------------------------------:|
|            User                 |                                 |
|            Bookmarks            |          .all_bookmarks         |
<img src="./public/readme_images/diag1.png" width="50%">

As a time-pressed user<br>
So that I can save a website<br>
I would like to add the site's address and title to bookmark manager

|            Object               |            Method               |
|:-------------------------------:|:-------------------------------:|
|            User                 |                                 |
|            Bookmarks            |          .add_bookmarks         |
<img src="./public/readme_images/diag3.png" width="50%">

As a user<br>
So I can store bookmark data for later retrieval<br>
I want to add a bookmark to Bookmark Manager
<img src="./public/readme_images/diagram.png" width="50%">

|            Object               |            Method               |
|:-------------------------------:|:-------------------------------:|
|            User                 |                                 |
|            Bookmarks            |             .add                |

## Motivation



## Build status


## Code style


## Tech/framework used


## Built with


## Installation

### Setting Up a PostgreSQL Database

#### Development Env
* Connect to psql
* Create the database using the psql command CREATE DATABASE bookmark_manager;
* Connect to the database using the pqsl command \c bookmark_manager;
* Run the query we have saved in the file 01_create_bookmarks_table.sql

#### Test Env
* Connect to psql
* Create the database using the psql command CREATE DATABASE bookmark_manager_test;
* Connect to the database using the pqsl command \c bookmark_manager_test;
* Run the query we have saved in the file 01_create_bookmarks_table.sql for development
* Run the query we have saved in the file 01_create_bookmarks_table.sql for test

## Tests


## Screenshots

<img src="./public/images/" width="50%">
<img src="./public/images/" width="50%">

## How to use?


## Credits
* JP Ferreira
* Dewald Viljoen
