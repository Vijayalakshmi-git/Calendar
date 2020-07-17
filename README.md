# Calendar
Simple calendar to schedule appointments

# README

To run this application, we need to install all following list of items in the system:

* Git 2.27.0
* Ruby 2.7.1
* Rails 6.0.3.2
* Sqlite 3 1.4.2

If you have them already installed, it is recommended to verify the current version of the installer by using the below command for compatibility reasons:

$ruby -v
ruby 2.7.1p83

$rails -v
Rails 6.0.3.2

Following are the major dependencies while running this application:

* MSYS2 and MINGW32/64
* webpacker
* yarn 1.22.4

* Workflow:

Create a new rails application using the below command

$rails new calendar
The Ruby on Rails framework makes the development in an easier way that makes it easier to code. This will create all the generators, plugins, gems, models, views, controllers
 and all other dependencies that are needed for the application and a directory in the name of application.

After creating an application, change the directory to the application path using the command

Important Note: If you already have a project created and a rails server started, please feel free to skip all instructions given below
 and jump directly to deployment instructions.

$cd calendar

This directory has a number of auto generated files and folders that are created by default. Some of the important folders are app, bin, config, routes etc and some of the important
 files in the project directory are gemfile and a ruby version file which contains the current version of ruby.

To start the server use the command:

$rails -s
This will start Puma, the default web server with Rails. Then open the browser window and navigate to "http:localhost//:3000/ and the default web page displaying
"Yay!You're on Rails! page" will be displayed.

We are using the custom stylesheet named calendar.css for the application and we can include that in the"app/assets/stylesheets/application.css" file by
*= require calendar

* Scaffolding:

For rendering a calendar with events, Ruby on Rails provides a built in model called Scaffolds which contains the template for implementing the
CRUD operations of the database (Create, Read, Update, Destroy).

The application is using a model scaffold named appointments where we can schedule an appointment for a particular date in the calendar.

The command to create scaffold along with attributes is given below:

$rails g scaffold appointment name:string start_time:datetime endtime:datetime notes:string
The scaffold has a built in controller,model and a view.

This application contains the functionalities

1) Creating a new appointment
2) Reading/Viewing all the appointments
3) Updating the appointment schedules
4) Deleting the appointment details
The home page displays the month calendar for the current month by default along with the appointments scheduled against each day 
 so that we can have a view of the appointments in the current month

Multiple appointments in a day are also sorted according to the time in the home page and then displayed against each date.

We can navigate through the previous and next month calendar through the links "previous month" and "next month" respectively.

The appointments are created in a separate form which takes the input parameters Appointment Name, Starting time, Ending time, and Notes respectively as input from the user.

There is a validation made in the appointment name to check the appointment name entered should be between 3 to 255 characters using JavaScript code.

The view appointment link displays all the appointments that are scheduled so far. We can edit, delete and view the individual appointments.

The Update appointment allows us to edit and modify any appointments that need to be changed.

The Delete appointment deletes the appointment schedule after confirmation with an alert message.

* Configuration:

Following are the configuration files where required code changes are made. Copy the following files and place them into appropriate directories to run the project:

Routes: config\routes.rb  - Modified here to display the index page of our project as home page of Rails

Model: app\models\appointment.rb - added javascript code validation for length of name

Controller: app\controllers\appointments_controller.rb - Modified allowed parameters to control list of parameters required

View: Major code changes made to below list of files modified as required to cater the needs of project:
app\views\appointments\
 _form.html.erb
 edit.html.erb
 index.html.erb
 new.html.erb
 show.html.erb

Stylesheet: app\assets\stylesheets\calendar.css - Created and added the required stylesheet for the project

Migrate:

Run the following rake command to migrate the db:

$rake db:migrate

Alternatively you could also run below command to migrate and mention the environment required:

rails db:migrate rails_ENV=development

* To run the project:

Now we are all set and run the application by using the command which starts the rails server by default on port 3000:

$rails s
=> Booting Puma
=> Rails 6.0.3.2 application starting in development
=> Run `rails server --help` for more startup options
*** SIGUSR2 not implemented, signal based restart unavailable!
*** SIGUSR1 not implemented, signal based restart unavailable!
*** SIGHUP not implemented, signal based logs reopening unavailable!
Puma starting in single mode...
* Version 4.3.5 (ruby 2.7.1-p83), codename: Mysterious Traveller
* Min threads: 5, max threads: 5
* Environment: development
* Listening on tcp://[::1]:3000
* Listening on tcp://127.0.0.1:3000
Use Ctrl-C to stop

Alternatively you could modify the port by running below command:

$rails s -p 3001

Once the rails server is started, open web browser of your choice (Note: This project is verified for compatibility on latest version of both Internet Explorer and Mozilla)
 and navigate to below url

http://localhost:3000

This would load the index page of calendar by default as we've already configured the routes file in the below line:
root 'appointments#index'

Navigate through all the links and try all the options in the calendar

Appreciate if feedback could be provided as this is my first project published in github

* Deployment Instructions:

Download the source file from github link and run commands below after placing all files mentioned above in configuration section appropriately:

$bundle install
$rails s

Alternatively we could also publish the source code as ruby gems and access it using gem <gem name> from gemfile in the project folder.

* To Do:

Following are few enhancements which could be considered in future:

Create additional view for displaying Weekly and Daily views of the calendar
Create users for storing appointments against individual users with their own views
Capability to include recurring appointments
Email notifications and Reminders for the appointment
and so on…
