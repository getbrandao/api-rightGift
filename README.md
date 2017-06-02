# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# README #

This README would normally document whatever steps are necessary to get your application up and running.

### What is this repository for? ###

* Quick summary

The api-rightGift is a json application developed over Ruby on Rails, whose was created to response the requests from Mobile and Web application. The front-end frameworks used to do requests are VueJS, Angular and React. The propose is to build a hybrid app and to provide our app idea in Google Play Store and Apple Store. 

* Version

`In the moment the current version is v0.0.1-alpha`

### How do I get set up? ###

* Summary of set up

All install and configuration are very simple. You will need install rails ~> 5.1 and MySQL Database installed!

* Configuration

```
install ruby version  -> 2.4

install rails version -> 5.1
 gem install rails

install bundle
 gem install bundler

install MySQL 5.7
```

You will need to change database.yml configuration for your database credentials.

* Dependencies

All gems are listed in the Gemfile file, just execute the command:
`bundle install`

* Database configuration

```
default: &default
  adapter: mysql2
  encoding: utf8
  pool: 5
  username: shauto1406
  password: sp33df1xv1
  socket: /var/run/mysqld/mysqld.sock

development:
  <<: *default
  database: autofix_development

test:
  <<: *default
  database: autofix_test`
```

* How to run tests

The methodology BDD is used in all features of the application. RSpec is framework used for this.

* Deployment instructions

Done all configuration over task, just create a new branch with all changes in the repository and 
apply a PR.

* Other guidelines

You may look Wiki's project to solve some questions, if exist.

### Who do I talk to? ###

* Repo owner or admin

```
Contact us through:

GMAIL: gustavobrandao@bsd.com.br
```
