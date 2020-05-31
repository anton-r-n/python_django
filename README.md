# MVP for courses web site

## Setup the project

```
$ python3 -m venv .venv
$ source .venv/bin/activate
(.venv) $ pip install -r requirements.txt
(.venv) $ python ./server/manage.py runserver
```

### The same commands with step by step comments
Check which executable file is used as python3
```
$ which python3
/usr/bin/python3
```

Check python3 version
```
$ python3 -V
Python 3.7.3
```

Create python3 virtual environment
```
$ python3 -m venv .venv
```

Activate the virtual environment
```
$ source .venv/bin/activate
(.venv) $
```

Make sure that `python` and `pip` executable files located under `.venv` folder
```
(.venv) $ which python
(.venv) $ which pip
(.venv) $ python -V
(.venv) $ pip -V
```

Install all the dependencies
```
(.venv) $ pip install -r requirements.txt
```

Run development server
```
(.venv) $ python ./server/manage.py runserver
```
