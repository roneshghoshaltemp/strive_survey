# README

Tech requirements:

Ruby 2.4.2
Rails 5.1.6
PostgreSQL 10.3

Setup:

bin/rake db:create db:migrate db:seed (Seeds the database with one 5-question survey)

Notes:

With more time I would have added styling, maybe a current_user method so I don't have
to keep passing the @user param, and thought more about the architecture of this.
For the purposes of an MVP I thought a user would only complete 1 survey - hence,
a user "belongs_to" a survey.

Ran out of time!



