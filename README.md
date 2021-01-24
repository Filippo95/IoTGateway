# README
# IOT Gateway

This project is about a simple IOT Gateway for small sensors which send via HTTP some metrics. 
This IOT Gateway allows you to share some sensors with other users on the gateway. 
this project is developed using RubyOnRails Framework and is deployed on [Heroku](https://pumpkin-cake-10633.herokuapp.com/)

## Installation
To use this project you must install RoR and bundler, ruby '2.7.0'
rails 6.0.2. 
As Database in depoly mode it uses postgres, sqlite3 for test and development.
As application server it uses Puma as default in Rails


```bash
git clone https://github.com/Filippo95/IoTGateway
cd IoTGateway
rails s
```
as default it runs on port 3000, you can personalize your esecution as in other rails applications. 

## Virtual Sensors
git repository contains also a ruby script that allows you to emulate some sensor. 
it's called 'virtual_sensors.rb', it perform a GET query to the application backend and receive information about Sensors, and then it perform many POST request to the backend as a real sensor sending some random value.
As parameters it take the sleepTime (seconds) between a set of sending requests, because it receive all sensors, it send a record for each sensor and than it sleep for some seconds, that's the sleepTime
To execute that script on your computer you can:
```bash
ruby virtual_sensors.rb  sleepTime
```
or just:
```bash
chmod +x virtual_sensors.rb
virtual_sensors.rb 
```


## License
[MIT](https://choosealicense.com/licenses/mit/)

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
