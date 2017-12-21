require 'capybara/dsl'

class BbcHomepage
  HOMEPAGE_URL = 'https://www.bbc.co.uk/'
  SIGN_IN_LINK_ID = '#idcta-link'
  EMAIL_FORM = 'user-identifier-input'
  PASSWORD_FORM = 'password'
  SUBMIT_BUTTON = 

 def initialize
   Capybara.register_driver :chrome do |app|
     Capybara::Selenium::Driver.new(app, :browser => :chrome)
   end

   @driver = Capybara::Session.new(:chrome)
 end

 def visit_home_page
   @driver.visit(HOMEPAGE_URL)
 end

 def click_sign_in
   @driver.find(SIGN_IN_LINK_ID).click
 end


 def input_username_or_email
   @driver.fill_in(EMAIL_FORM, with:'solufemi-olukanni@hotmail.com')
 end

 def insert_password
   @driver.fill_in(PASSWORD_FORM, with:'123456789a')
 end

 def click_submit_button
   @driver.find(SUBMIT_BUTTON).click
 end

end

# '123456789a'

test1 = BbcHomepage.new
test1.visit_home_page
test1.click_sign_in
test1.input_username_or_email
test1.insert_password

sleep 5
