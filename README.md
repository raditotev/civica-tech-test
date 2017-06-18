# Solution for Civica's technical test

### Setup

Install ruby 2.4.1  
Clone this repository locally `git clone git@github.com:raditotev/civica-tech-test.git`  
Install bundler `gem install bundler`  
Install gems `bundle install`

Tests are run by default on chrome browser. You need to have it installed.  
If you want to run the tests on Firefox you'll need to have this browser installed as well.

### Running tests

Executing `cucumber` from the console will run the tests on a Chrome browser.

To run the tests on a Firefox browser run `cucumber -p firefox`

### Results

In case of failing tests, screenshots of the current page could be found in the **screenshots** folder in the root of the project 
