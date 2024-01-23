# LightBnB

## Project Structure

```
.
├── db
│   └── database.js
├── public
│   ├── javascript
│   │   ├── components 
│   │   │   ├── header.js
│   │   │   ├── login_form.js
│   │   │   ├── new_property_form.js
│   │   │   ├── property_listing.js
│   │   │   ├── property_listings.js
│   │   │   ├── search_form.js
│   │   │   └── signup_form.js
│   │   ├── libraries
│   │   ├── index.js
│   │   ├── network.js
│   │   └── views_manager.js
│   ├── styles
│   │   ├── main.css
│   │   └── main.css.map
│   └── index.html
├── routes
│   ├── apiRoutes.js
│   └── userRoutes.js
├── styles  
│   ├── _forms.scss
│   ├── _header.scss
│   ├── _property-listings.scss
│   └── main.scss
├── .gitignore
├── package-lock.json
├── package.json
├── README.md
└── server.js
└── migrations
│   ├──01_schema.sql
│   ├──02_schema.sql
└── seeds
│   ├──01_seeds.sql
│   ├──02_seeds.sql
```

* `db` contains all the database interaction code.
  * `database.js` is responsible for all queries to the database. The functions inside have been updated to query the database and not the JSON files as before.
* `public` contains all of the HTML, CSS, and client side JavaScript. 
  * `index.html` is the entry point to the application. It's the only html page because this is a single page application.
  * `javascript` contains all of the client side javascript files.
    * `index.js` starts up the application by rendering the listings.
    * `network.js` manages all ajax requests to the server.
    * `views_manager.js` manages which components appear on screen.
    * `components` contains all of the individual html components. They are all created using jQuery.
* `routes` contains the router files which are responsible for any HTTP requests to `/users/something` or `/api/something`. 
* `styles` contains all of the sass files. 
* `server.js` is the entry point to the application. This connects the routes to the database.
* `migrations` defines the schema for the database used.
  * `01_schema.js` defines schema for the database used in the app, all actual functionality on the app comes from the tables defined here.
  * `02_schema.js` defines schema for the the two optional tables 'rates' and 'guest_reviews'. These tables are not actually used at any point but allow
                   for further functionality to be added in the future.
* `seeds` contains all seed data for our database
  * `01_seeds.js` conatains data for first three sample users.
  * `02_seeds.js` conatains data for all other users, properties, reservations, and property reviews.
