RoR Workshops - Fixed
================
[![Build Status](https://travis-ci.org/Kadilak/katowice-workshop.svg?branch=master)](https://travis-ci.org/Kadilak/katowice-workshop)

### :closed_lock_with_key: Technology stack
-------------

| Name |  Version |
| :--: | :---: |
| [Ruby](https://www.ruby-lang.org) | 2.2.0 |
| [Ruby on Rails](http://www.rubyonrails.org/) | 4.2.1 |
| [PostgreSQL](http://www.postgresql.org/) | 9.3 |

### :book: Setup
-------------
1. clone repository,
2. `cd path/to/repo`,
3. `cp database.yml.sample database.yml`,
4. `rake db:create db:schema:load`

#### :white_check_mark: Things that were done

* all tests should pass
* added badge and ensure your application has "build | passing status" 
* application on heroku: https://vast-atoll-5048.herokuapp.com/
* added `birthdate` column to `Student` model.
  * column is optional,
  * handle create/edit/show actions in views (StudentsController)
  * display that date in `ReportsController#subjects` in format `RRRR-MM_DD`
* added function that allows storing data about student payments in the database.
* added rails-databasetables to Payment#index
* unfortunately did not write spec for payments :(
