A demonstration of how the Nested List View in Sencha Touch.

Also, see the [Sencha Touch Nested List example][eg].

## Deploying to Heroku ##

Setup to use sqlite:

    heroku config:add DATABASE_URL=sqlite://development.db
    heroku config:add SHARED_DATABASE_URL=sqlite://development.db

Run:

    git push heroku master
    heroku db:push sqlite://development.db

TODO:

* clicking a leaf node should scroll to show a fresh page
* update the text in the 'Back' button to show parent title (not 'Groceries')

[eg]: http://dev.sencha.com/deploy/touch/examples/nestedlist/
