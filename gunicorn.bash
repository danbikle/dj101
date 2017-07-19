#!/bin/bash

# gunicorn.bash

# This script should start a gunicorn web server so I can see my django site.

~/anaconda3/bin/gunicorn --reload -b '0.0.0.0:16101' gettingstarted.wsgi

exit
