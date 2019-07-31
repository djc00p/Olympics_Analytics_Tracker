# Olympics Analytics Tracker

Authored by: [Deonte Cooper](https://github.com/djc00p)

This is a solo project Take Home Challenge to build a live Olympic Analytics tracker for the 2020 Summer Games. I used [Olympian CSV Data](https://github.com/turingschool/backend-curriculum-site/blob/gh-pages/module4/projects/take_home_challenge/prompts/olympic_data_2016.csv) to populate my database using a Rake Task.

## Setup

The program can run in development from the Rails server after following these steps in your console:

Clone down the repo
```
$ git clone git@github.com:djc00p/Olympics_Analytics_Tracker.git
```

Change to the app directory
```
$ cd Olympics_Analytics_Tracker
```

Install the gem packages
```
$ bundle install
```

Setup Database
```
$ rails db:{create,migrate}
$ rake import:all
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

#### Index

Returns all olympians currently in the database

##### Request

```http
GET /api/v1/olympians
```

##### Successful Response

```http
HTTP/1.1 200 OK
```

###### Body

```json
{
  "olympians":
    [
        {
          "name": "Maha Abdalsalam",
          "team": "Egypt",
          "age": 18,
          "sport": "Diving",
          "total_medals_won": 0
        },
        {
          "name": "Ahmad Abughaush",
          "team": "Jordan",
          "age": 20,
          "sport": "Taekwondo",
          "total_medals_won": 1
        },
    ]
}
```

<details><summary>Failed Responses</summary>

##### Other

```http
HTTP/1.1 500 Internal Server Error
```

###### Body

```js
{"error": "Internal Server Error"}
```

</details>

---

### Youngest Olympians

#### Sort

Returns youngest olympian

##### Request

```http
GET /api/v1/olympians?age=youngest
```

##### Successful Response

```http
HTTP/1.1 200 OK
```

###### Body

```json
{
    "youngest": [
        {
            "name": "Ana Iulia Dascl",
            "team": "Romania",
            "age": 13,
            "sport": "Swimming",
            "total_medals_won": 0
        }
    ]
}
```

<details><summary>Failed Responses</summary>

##### Other

```http
HTTP/1.1 500 Internal Server Error
```

###### Body

```js
{"error": "Internal Server Error"}
```

</details>

---

### Oldest Olympians

#### Sort

Returns oldest olympian

##### Request

```http
GET /api/v1/olympians?age=oldest
```

##### Successful Response

```http
HTTP/1.1 200 OK
```

###### Body

```json
{
    "oldest": [
        {
           "name": "Julie Brougham",
           "team": "New Zealand",
           "age": 62,
           "sport": "Equestrianism",
           "total_medals_won": 0
        }
    ]
}
```

<details><summary>Failed Responses</summary>

##### Other

```http
HTTP/1.1 500 Internal Server Error
```

###### Body

```js
{"error": "Internal Server Error"}
```

</details>

---
### Olympian Stats

#### Index

Returns all olympian stats

##### Request

```http
GET /api/v1/olympian_stats
```

##### Successful Response

```http
HTTP/1.1 200 OK
```

###### Body

```json
{
    "olympian_stats": {
        "total_competing_olympians": 2850,
        "average_weight": {
            "unit": "kg",
            "male_olympians": 77,
            "female_olympians": 60.7
        },
        "average_age": 26.2
    }
}
```

<details><summary>Failed Responses</summary>

##### Other

```http
HTTP/1.1 500 Internal Server Error
```

###### Body

```js
{"error": "Internal Server Error"}
```

</details>

---

### Events

#### Index

Returns all event stats

##### Request

```http
GET /api/v1/events
```

##### Successful Response

```http
HTTP/1.1 200 OK
```

###### Body

```json
{
    "data": [
        {
            "id": "1",
            "type": "sports",
            "attributes": {
                "sport": "Archery",
                "events": [
                    "Archery Men's Individual",
                    "Archery Men's Team",
                    "Archery Women's Individual",
                    "Archery Women's Team"
                ]
            }
        },
        {
            "id": "3",
            "type": "sports",
            "attributes": {
                "sport": "Badminton",
                "events": [
                    "Badminton Men's Doubles",
                    "Badminton Men's Singles",
                    "Badminton Mixed Doubles",
                    "Badminton Women's Doubles",
                    "Badminton Women's Singles"
                ]
            }
        }
    ]
}
```

<details><summary>Failed Responses</summary>

##### Other

```http
HTTP/1.1 500 Internal Server Error
```

###### Body

```js
{"error": "Internal Server Error"}
```

</details>

---

### Event Medalists

---

## System Requirements

Language: [Ruby 2.4.1](https://www.ruby-lang.org/en/)

Framework: [Rails 5.2.3](https://rubyonrails.org/)

Database: [PostgreSQL 11.2](https://www.postgresql.org/)

ORM: [Active Record](https://guides.rubyonrails.org/active_record_querying.html)
