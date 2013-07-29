# A GTalk Bot

Talk to your robot via GTalk. It's fun!

## Deploy to Heroku

Assuming you've already created the app on Heroku and pushed this repo to it:

    heroku config:set GOOGLE_EMAIL=gabebw@gmail.com GOOGLE_PASSWORD=puppies
    heroku ps:scale bot=1

That's it! It should be up and running.
