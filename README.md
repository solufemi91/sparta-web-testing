# sparta-web-testing

## What was required?

I had to use Capybara test four different scenarios regarding the functionality of the bbc website: an unsuccessful login, a successful login, successful sign up and a unsuccessful signup. I also had to use selenium to test a website that required the user to fill a form in.

## How to run the tests for Capybara?

Go to the capybara_rspec.rb folder and run the command 'rspec' in the terminal. The results of the tests should be displayed in the terminal. If the results are green, the test have passed, if red, it has failed.

## Cheatsheet for Capybara

https://gist.github.com/tomas-stefano/6652111

## Installation instructions

Capybara requires Ruby 1.9.3 or later. To install, add this line to your Gemfile and run bundle install:

    'gem 'capybara'

    And then run the following:

    bundle install


## How to run the tests for Selenium

From the main directory, write the following command:

    'cd starter_code_ui_testing'
And then run the command

    'rspec'

The results of the tests should be displayed in the terminal. If the results are green, the test have passed, if red, it has failed.


## What i struggled with initially?

I struggled to click either the 'yes please' button or the 'no thanks' button and as a result I was not able to complete a successful signup.

I also struggled to implement the after all catcher to ensure that after each spec file is executed that the page went back to an un-logged home page. This meant that all my test could not not run properly one after the other.
