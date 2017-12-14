#!/bin/bash
heroku create
git push heroku master
heroku rake db:migrate
heroku rake db:seed
heroku open