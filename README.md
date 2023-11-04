# theredbookapp

react native built app that works on expo for testing

do check <a href = "https://github.com/anemoiastudios/theredbookapp/tree/flutter_previous">Flutter branch</a> for previous work

Make sure you create a .env file inside the 'backend' directory. It should have the following environment variables:
!----- Make sure to add .env to your .gitignore file -----!

- DB_HOST - The place where the database is hosted. For me it was localhost.
- DB_USER - The name of the user of the database. Default is 'root'.
- DB_NAME - The name of the database.
- DB_PASSWORD - Whatever password that the user of the database is using.
- PORT - Any open port. You can use these to make api calls.

npm install express mysql2 dotenv cors morgan helmet
