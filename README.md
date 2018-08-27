# README

Welcome to test transit uc. You need setting up the next files:

Create a .env or .rbenv-vars file with this ENVIRONMENT variables:

* DATABASE_USERNAME: Username in your posgresql database. Example: user
* DATABASE_PASSWORD: Password for your posgresql username. Example: 123456789
* DATABASE_HOST: This is your postgresql host. Example: localhost
* DATABASE_NAME: This is your posgresql schema. Example: wheathers
* APP_ID: This is your open weather map token

Create a .ruby-version file with 2.3.7
After that, you need to create your database:

    $ bundle install
    $ rails db:create
    $ rails db:migrate
    $ rails db:seed

Then run:
`$ rails server`

To analize ruby code you can put `binding.pry` keyword to stop execution and print variables in console
Enjoy!.
