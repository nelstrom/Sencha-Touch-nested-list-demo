This Git repository includes all of the source code used in creating a tutorial about the NestedList component in Sencha Touch.

The tutorial includes several checkpoints:

* [Blank slate][00] - the application skeleton
* [Basic nested list setup][01] - configuring the nested list with a tree store and model
* [Create a detail card][02] - making the detail card for leaf nodes
* [Add metadata to listings][03] - adding metadata to the list items

Using this repository to follow the screencast
----------------------------------------------

First, you'll have to clone this repository:

    git clone git://github.com/nelstrom/Sencha-Touch-nested-list-demo.git

Change into the directory:

    cd Sencha-Touch-nested-list-demo

By default, the `git clone` command will only create the master branch locally. If you want to study the code at each checkpoint, you will have to fetch each of the other branches. You can do so by running the following:

    git checkout -b 00_blank_slate origin/00_blank_slate
    git checkout -b 01_setup_nested_list origin/01_setup_nested_list
    git checkout -b 02_create_detail_card origin/02_create_detail_card
    git checkout -b 03_add_metadata_to_listings origin/03_add_metadata_to_listings

You can review the list of local branches by running:

    git branches

And you can switch between branches with the `checkout` command. For example, to check out the `03_add_metadata_to_listings` branch, run:

    git co 03_add_metadata_to_listings

Live demo
---------

You can try out the demo here:

* [http://sencha-nested-list.heroku.com/][d]

[00]: https://github.com/nelstrom/Sencha-Touch-nested-list-demo/tree/00_blank_slate
[01]: https://github.com/nelstrom/Sencha-Touch-nested-list-demo/tree/01_setup_nested_list
[02]: https://github.com/nelstrom/Sencha-Touch-nested-list-demo/tree/02_create_detail_card
[03]: https://github.com/nelstrom/Sencha-Touch-nested-list-demo/tree/03_add_metadata_to_listings

[d]: http://sencha-nested-list.heroku.com/

------

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