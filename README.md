# https://github.com/danbikle/dj101

This is a django app, easily deployed to Heroku.

This app was created from [Getting Started with Python on Heroku](https://devcenter.heroku.com/articles/getting-started-with-python) article - check it out.

## Running Locally

I like to run this app inside of a VirtualBox instance.

To do that, I first install VirtualBox on my laptop:

https://www.virtualbox.org/wiki/Downloads

Next I download a file: (ub16jul21.ova, Ubuntu 16.04 VirtualBox Instance 10 GB):

https://drive.google.com/file/d/0Bx3iDDAtxxI4MmNNLXM4RTZvYTA

The above instance has an account named ann with password: 'a'

In that account you should find a copy of Anaconda Python 4.4.0 which contains Python 3.6.1

Also that account should have access to the Heroku Toolbelt.

The Heroku Toolbelt is a shell command named: 'heroku'

After I boot the above Ubuntu instance and login as ann, I run some shell commands:

```sh
cd ~ann
git clone https://github.com/danbikle/dj101
cd dj101

pip install -r requirements.txt

python manage.py migrate
python manage.py collectstatic
gunicorn gettingstarted.wsgi
```

Above, notice the pip command.

Usually I use conda instead of pip.

For dj101, I prefer to use pip (because conda cannot install dj-database-url==0.4.1).

Now, you can browse http://localhost:8000

## Deploy to Heroku

I start this effort by creating an account at heroku.com using only an e-mail address.

As of 2017-07-19, heroku.com requires only an e-mail address to create an account.

After I have a heroku account, I am ready to do the steps below.

I use the shell commands below to deploy to heroku:

```sh
cd ~ann/dj101
heroku whoami
heroku auth:login
heroku create
git push heroku master

heroku run python manage.py migrate
heroku open
```

## Documentation

For more information about using Python on Heroku, study the URL below:

https://devcenter.heroku.com/categories/python

If you have questions, e-me: bikle101 , gmail
