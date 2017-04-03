# README

Welcome to test transit uc. You need setting up the next files:

Create a .env or .rbenv-vars file with this ENVIRONMENT variables:

* DATABASE_USERNAME: Username in your posgresql database. Example: user
* DATABASE_PASSWORD: Password for your posgresql username. Example: 123456789
* DATABASE_HOST: This is your postgresql host. Example: localhost
* APP_ID: This is your open weather map token

After that, you need to create your database:

    bundle install && rails db:setup

Enjoy!.
