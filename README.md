[![Build Status](https://travis-ci.org/getbrandao/api-rightGift.svg?branch=master)](https://travis-ci.org/getbrandao/api-rightGift)

[![Code Climate](https://codeclimate.com/github/getbrandao/api-rightGift.png)](https://codeclimate.com/github/getbrandao/api-rightGift)
[![Test Coverage](http://img.shields.io/codeclimate/coverage/github/getbrandao/api-rightGift.png)](https://codeclimate.com/github/getbrandao/api-rightGift)
[![Issues](http://img.shields.io/codeclimate/issues/github/getbrandao/api-rightGift.png)](https://codeclimate.com/github/getbrandao/api-rightGift)

[![codecov.io](https://codecov.io/gh/getbrandao/api-rightGift/coverage.svg?branch=master)](https://codecov.io/gh/getbrandao/api-rightGift?branch=master)

[![GitHub version](https://badge.fury.io/gh/getbrandao%2Fapi-rightGift.svg)](https://badge.fury.io/gh/getbrandao%2Fapi-rightGift)

[![Dependency Status](https://gemnasium.com/getbrandao/api-rightGift.svg)](https://gemnasium.com/getbrandao/api-rightGift)

[![Average time to resolve an issue](http://isitmaintained.com/badge/resolution/getbrandao/api-rightGift.svg)](http://isitmaintained.com/project/getbrandao/api-rightGift)
[![Average time to resolve an issue](http://isitmaintained.com/badge/resolution/getbrandao/api-rightGift.svg)](http://isitmaintained.com/project/getbrandao/api-rightGift)

# README #

This README would normally document whatever steps are necessary to get the application up and running.

### What is this repository for? ###

* Quick summary

The api-rightGift is a REST API developed over Ruby on Rails, whose was created to response the requests from Mobile and Web application. This application uses the gem 'AMS' and following the specifications ans recommendations over [{json:api}](http://jsonapi.org/). The front-end frameworks used to do requests are Angular, VueJS and React. The goal is to build a hybrid app and to provide our app idea in Google Play Store and Apple Store.

The RightGift application has the propose to allow you choice some gift you would like to earn from your contacts. Because of that, you can choose which is social network (Facebook, Twitter and Google+) that you desire to share the gift with store's link and details. Futhermore, you can create a account from Paypal and send the link to your contacts, making possible to them to donate to you buy the desired gift.

* Version

`In the moment the current version is v0.0.1-alpha`

### How do I get set up? ###

* Summary of set up

All install and configuration are very simple. You will need install rails ~> 5.1 and MySQL Database installed!

* Configuration (please see (https://gorails.com/))

```
install ruby version  -> 2.4

install rails version -> 5.1
 gem install rails

install bundle
 gem install bundler

install MySQL 5.7
```

You will need to change ```database.yml``` configuration for your database credentials.

* Dependencies

All gems are listed in the Gemfile file, just execute the command:
`bundle install`

* Database configuration

```
default: &default
  adapter: mysql2
  encoding: utf8
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: <%= ENV['DEV_TEST_DB_USER'] %>
  password: <%= ENV['DEV_TEST_DB_PASSWORD'] %>
  socket: /var/run/mysqld/mysqld.sock

development:
  <<: *default
  database: rightGift_development

test:
  <<: *default
  database: rightGift_test`
```

**Note**:

Recommended install [dotenv-rails](https://github.com/bkeepers/dotenv) and configure a file(.env) with env variables you will need.

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
