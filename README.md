A demonstration of how the Nested List View in Sencha Touch.

Also, see the [Sencha Touch Nested List example][eg].

## Getting the sinatra app running ##

This example uses [Sinatra][] to run a simple backend that serves json responses. To run it on your system, you will need to have Sinatra and postresql installed.

### Installing Sinatra (and all dependencies) ###

Sinatra is a very simple web application framework written in ruby. If you have rubygems installed, then you can set up your environment simply by running the following from the root directory for this project:

    gem install bundler
    bundle install

This installs all of the dependencies required to make this Sinatra app run.

### Create the database ###

Create the Postgres database:

    createdb music_catalogue
    rake db:seed

## Deploying to Heroku ##

Run:

    git push heroku master
    heroku rake db:seed

TODO:

* clicking a leaf node should scroll to show a fresh page
* update the text in the 'Back' button to show parent title (not 'Groceries')

[eg]: http://dev.sencha.com/deploy/touch/examples/nestedlist/
[Sinatra]: http://www.sinatrarb.com/