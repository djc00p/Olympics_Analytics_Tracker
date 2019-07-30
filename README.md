# Olympics Analytics Tracker

Authored by: [Deonte Cooper](https://github.com/djc00p)

This is a solo project Take Home Challenge to build a live Olympic Analytics tracker for the 2020
Summer Games. I used [Olympian CSV Data](https://github.com/turingschool/backend-curriculum-site/blob/gh-pages/module4/projects/take_home_challenge/prompts/olympic_data_2016.csv) to populate my database using a Rake Task.

## Setup

The program can run in development from the Rails server after following these steps in your console:

Clone down the repo
```
$ git clone git@github.com:djc00p/Olympics_Analytics_Tracker.git
```

Change to the app directory
```
cd Olympics_Analytics_Tracker
```

Install the gem packages
```
$ bundle install
```

Setup Database
```
$ rails db:{create,migrate}
$ rake import:olympians
```

Run the server
```
$ rails s
```

## Testing
The project uses [SimpleCov](https://github.com/colszowka/simplecov) and [RSpec](https://github.com/rspec/rspec) to test.

Run the test suite:
```
$ bundle exec rspec
```

## Endpoints

|                Endpoints                |
|-----------------------------------------|
|[Olympians](#olympians)                  |
|[Youngest Olympians](#youngest-olympians)|
|[Oldest Olympians](#oldest-olympians)    |
|[Olympian Stats](#olympian-stats)        |
|[Events](#events)                        |
|[Event Medalists](#event-medalists)      |

### Olympians
### Youngest Olympians
### Oldest Olympians
### Olympian Stats
### Events
### Event Medalists

## System Requirements

Language: [Ruby 2.4.1](https://www.ruby-lang.org/en/)

Framework: [Rails 5.2.3](https://rubyonrails.org/)

Database: [PostgreSQL 11.2](https://www.postgresql.org/)

ORM: [Active Record](https://guides.rubyonrails.org/active_record_querying.html)
