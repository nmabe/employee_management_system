# Employee Management System

A ruby on rails app that 

* creates a new employee and store in a database
* Edit an existing employee
* Delete and employee
* View a list of employees

## Getting started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

Tools need to run the app

* rvm 1.29.7
* ruby 2.6.0p0
* Rails 6.0.0.rc1
* sqlite3 1.3.7
* git

### Installing

```
$> git clone https://github.com/nmabe/employee_management_system.git

```

then change to the cloned directory 

```
$> bundle install

```

### Building

run database migration/schema setup



```
$> rails db:migrate
$> rails db:seed

```

### Running / Deployment

on terminal run

```
$> rails server
```
or 

```
$> rails s

```
On your browser visit (http://localhost:3000)

### Testing 


```

$> rails test

```


