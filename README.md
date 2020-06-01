# MVP for courses web site

This app implements basic API for matching students and courses.

## Examples

Request courses filtered by substring of a course code:
```
curl 'http://127.0.0.1:8000/api/courses/?query=1'
```

Response contains list of records:
```
[
  {
    "code": "AEROSPC 1A 001",
    "title": "Foundations of the U.S. Air Force",
    "institution__name": "Berkeley"
  },
  {
    "code": "AEROSPC 2B 001",
    "title": "The Evolution of Air and Space Power",
    "institution__name": "Berkeley"
  },
  {
    "code": "MKTG 691",
    "title": "PhD Directed Reading",
    "institution__name": "Stanford"
  }
]
```

Request students attended on a course:
```
curl 'http://127.0.0.1:8000/api/attendees/?query=AEROSPC+1A+001'
```

Response contains list of students:
```
[
  {
    "user__first_name": "Liam",
    "user__last_name": "Smith",
    "user__email": "liam@gmail.com"
  },
  {
    "user__first_name": "Oliver",
    "user__last_name": "Jones",
    "user__email": "oliver@gmail.com"
  }
]
```

## Setup the project

Prerequisites: Python3, MySQL.

```
$ python3 -m venv .venv
$ source .venv/bin/activate
(.venv) $ pip install -r ./requirements.txt
(.venv) $ mysql -uroot -p < ./server/sql/init.sql
(.venv) $ python ./server/manage.py migrate
(.vanv) $ mysql -uroot -p < ./server/sql/mock.sql
(.venv) $ python ./server/manage.py runserver
```