A demonstration of how the Nested List View in Sencha Touch.

Also, see the [Sencha Touch Nested List example][eg].

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
