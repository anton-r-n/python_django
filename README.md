# MVP for courses web site

## Setup the project

```
$ python3 -m venv .venv
$ source .venv/bin/activate
(.venv) $ pip install -r ./requirements.txt
(.venv) $ mysql -uroot -p < ./server/sql/init.sql
(.venv) $ python ./server/manage.py migrate
(.vanv) $ mysql -uroot -p < ./server/sql/mock.sql
(.venv) $ python ./server/manage.py runserver
```