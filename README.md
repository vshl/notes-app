# README

## Setup

### Pre-requisites

* Ruby v2.6.3
* Ruby on Rails v6.0.3.4

1. `git clone git@github.com:vshl/notes-app.git`

2. `cd notes-app`

3. `bundle install`

4. `bin/rails db:setup` 

    or

    `bin/rails db:create`

    `bin/rails db:migrate`

5. `bin/rails s`

6. Launch web browser and open `localhost:3000`

## Features

* Main page is the notes index page

* It lists notes created with the title, body, tags

* Creating a new note, the user can create a note with a title, body and tags

* Title and body are mandatory, the tags are optional

* Tags are browsable and for this assignment, the user can only view and delete
  tags

* Tags can be updated for each note

* Deleting a tag will disassociate the tag from the note

## Demo

https://involvio-notes-app.herokuapp.com/
