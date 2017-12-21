# sparta-web-testing

## What was required?

I had to use Capybara test four different scenarios regarding the functionality of the bbc website: an unsuccessful login, a successful login, successful sign up and a unsuccessful signup

## What i struggled with initially?

I struggled to click either the 'yes please' button or the 'no thanks' button and as a result I was not able to complete a successful signup.

I also struggled to implement the after all catcher to ensure that after each spec file is executed that the page went back to an un-logged home page. This meant that all my test could not not run properly one after the other.

## How to run the tests?

Go to the capybara_rspec.rb folder and run the command 'rspec' in the terminal.

## Cheatsheet for Capybara

https://gist.github.com/tomas-stefano/6652111

## Installation instructions

Capybara requires Ruby 1.9.3 or later. To install, add this line to your Gemfile and run bundle install:

```'gem 'capybara'```

And then run the following:

```bundle install```
