# README

To deploy this proyect you will need use Docker and run the next commands:

- `docker-compose build`
- `docker-compose run app db:create`
- `docker-compose run app db:migrate`
- `docker-compose run app db:seed`

With this you will get a populated database and container image to run the project.
Now you need run this command `docker-compose up` and complete server will run in http://127.0.0.1:3000/

You get `talks`, `speakers` and `attendees` endpoints and you can use HTTP methods to list, show, create, update and delete each one.
