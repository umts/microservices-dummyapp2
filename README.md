# microservices-dummyapp2

This is a single-model Rails app, designed for testing our microservices architecture.

The model is `ParkingSpace`, and the functionality of the app is to hold a list of parking spaces,
and to let other services know if there are spaces available, and to handle requests for cars parking in those spaces or leaving them.

First, initialize the database with `rails db:reset`.

Then run a server, and test the architecture connections over on microservices-dummyapp1.

## Setup

1. Bundle
1. Create a `database.yml` file which points to the appropriate database.
1. Profit
