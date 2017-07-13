# https://github.com/danbikle/dj101

This is a django app, easily deployed to Heroku.

This app was created from [Getting Started with Python on Heroku](https://devcenter.heroku.com/articles/getting-started-with-python) article - check it out.

## Running Locally

I like to run this app inside of a VirtualBox instance.

To do that, I first install VirtualBox on my laptop:

https://www.virtualbox.org/wiki/Downloads

Next I download a .ova file (Ubuntu 16.04 VirtualBox Instance 9.7 GB):

https://drive.google.com/file/d/0Bx3iDDAtxxI4YW1YNmp3b2FoVWc

The above instance has an account named ann with password: 'a'

In that account you should find a recent copy of Anaconda Python.

Also that account should have access to the Heroku Toolbelt.

The Heroku Toolbelt is a shell command: heroku

After I boot the above Ubuntu instance and login as ann, I run some shell commands:

```sh
git clone https://github.com/danbikle/dj101
cd dj101

pip install -r requirements.txt

python manage.py migrate
python manage.py collectstatic
gunicorn -b 0.0.0.0 gettingstarted.wsgi
```

Now, your app should be running on http://localhost:5000

## Deploy to Heroku

I use the shell commands below to deploy to heroku:

```sh
heroku create
git push heroku master

heroku run python manage.py migrate
heroku open
```

## Documentation

For more information about using Python on Heroku, study the URL below:

https://devcenter.heroku.com/categories/python
