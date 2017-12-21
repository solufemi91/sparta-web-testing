require 'capybara/dsl'

class BbcSignInPage
  include Capybara::DSL

  SIGN_IN_PAGE_URL = 'https://www.bbc.co.uk/signin'
  USERNAME_FIELD_ID = 'user-identifier-input'
  PASSWORD_FIELD_ID = 'password-input'
  WRONG_PASSWORD_ERROR_TEXT = 'Uh oh, that password doesn’t match that account. Please try again.'
  WRONG_USERNAME_ERROR_TEXT = "Sorry, we can’t find an account with that username. If you're over 13, try your email address instead or get help here."
  WRONG_PASSWORD_ERROR_ID = 'form-message-password'
  REGISTER_LINK_TEXT = 'Register now'
  SUBMIT_BUTTON_ID = 'submit-button'

  def visit_register_page
    visit(SIGN_IN_PAGE_URL)
  end

  def username_field
    find_field(:id, USERNAME_FIELD_ID)
  end

  def fill_in_username(username)
    fill_in(USERNAME_FIELD_ID, with: username)
  end

  def password_field
    find_field(:id, PASSWORD_FIELD_ID)
  end

  def fill_in_password(password)
    fill_in(PASSWORD_FIELD_ID, with: password)
  end

  def sign_in_button
    find_button(SUBMIT_BUTTON_ID)
  end

  def click_sign_in_button
    sign_in_button.click
  end

  def register_link
    find_link(REGISTER_LINK_TEXT)
  end

  def click_register_link
    click_link(REGISTER_LINK_TEXT)
  end

  def incorrect_password_text
    find(:id, WRONG_PASSWORD_ERROR_ID).text
  end

  def check_incorrect_password_text
    WRONG_PASSWORD_ERROR_TEXT
  end

  def check_incorrect_username_text
    WRONG_USERNAME_ERROR_TEXT
  end

end
