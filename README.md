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

# IOT Gateway

This project is about a simple IOT Gateway for small sensors which send via HTTP some metrics. \
This IOT Gateway allows you to share some sensors with other users on the gateway. \
As CSS framework it uses PURE.CSS (very ligth) \
This project is developed using RubyOnRails Framework and is deployed as Demo on [Heroku](https://pumpkin-cake-10633.herokuapp.com/)

## Concepts
This Project as many feature, here some of them:
* A user can register hiself on this platform providing his email and password. 
* Every user can register his own sensors, and  set them public or private (in this case other users in the platform couldn't see data sended byt that sensor). 
* Every sensor is identified by URI, Type, latutude, longitude, misuration unit (of data that are pushed on the platform), MAC address, Downtime to alarm
* Every user can navigate through his sensors and manage them. 
* Every user can see all data, that are sended by his sensors
* Every user can subscribe to public sensors of other users, in that way he can see data from other sensors, but he can't update any information about data provided by the sensor or the sensor. 
* Every user if he would, can receive an email when the sensor does not provide any data for a certain period (Downtime to alarm)
* Every sensor owner can update the sensor firmware by uploading via HTTP the firmware file to the gateway, and than it will send it to the sensor, updating the lastFirmwareUpdate field. 
*It's possibile to define user's groups and sensors groups

## Installation
To use this project you must install RoR and bundler, ruby '2.7.0'
rails 6.0.2. \
As Database in depoly mode it uses postgres, sqlite3 for test and development.\
As application server it uses Puma as default in Rails


```bash
git clone https://github.com/Filippo95/IoTGateway
cd IoTGateway
rails s
```
As default it runs on port 3000, you can personalize your esecution as in other rails applications. 

## System Dependencies
This project uses Ruby 2.7.0 and RubyOnRails 6.0.2 \
As database sqlite3 and postgres than you need to install these gems. \
For manage users its uses Devise 4.7.1


## How to run the test suite
As many other Rails apps, it has his own test suite. \
To execute all test in the app run:
```bash
cd IoTGateway
rails test
```
There are also many fixtures for each entity into the relative folder under:
```bash
IoTGateway/test/fixtures
```

## REST Interface
As any Rails application, by default there's a ReST API.\
The ReST Interface is principally used to get all sensors information for the VirtualSensors script, or to get data from the sensors (POST). 


## Virtual Sensors
Git repository contains also a ruby script that allows you to emulate some sensor. \
it's called 'virtual_sensors.rb', it perform a GET query to the application backend and receive information about Sensors, and then it perform many POST request to the backend as a real sensor sending some random value.\
As parameters it take the sleepTime (seconds) between a set of sending requests, because it receive all sensors, it send a record for each sensor and than it sleep for some seconds, that's the sleepTime.\
To execute that script on your computer you can:
```bash
ruby virtual_sensors.rb  sleepTime
```
or just:
```bash
chmod +x virtual_sensors.rb
virtual_sensors.rb 
```
## RoadMap (TODOS)
* Increase test suite
* develop users group and sensor group
* some graphics
* upload firmware
* mail alert
* 

## License
[MIT](https://choosealicense.com/licenses/mit/)

## Developers
* Filippo Luppi
* Michele Maestri 
* Marco Andreotti
