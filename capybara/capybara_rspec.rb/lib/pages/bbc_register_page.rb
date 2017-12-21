require 'capybara/dsl'

class BbcRegisterPage
  include Capybara::DSL

  SIGN_IN_PAGE_URL = 'https://www.bbc.co.uk/signin'
  REGISTER_LINK_TEXT = 'Register now'
  DAY_INPUT_FIELD = 'day-input'
  MONTH_INPUT_FIELD = 'month-input'
  YEAR_INPUT_FIELD = 'year-input'
  CONTINUE_BUTTON = 'submit-button'
  FORM_MESSAGE = 'form-message-dateOfBirth'
  FUTURE_DATE_MESSAGE = "Oops, that date's in the future. Make sure it’s a date in the past. (Unless you’re a time traveller. In which case, what’s the future like? Are there flying cars?)"
  EMAIL_INPUT = 'user-identifier-input'
  PASSWORD_INPUT = 'password-input'
  POSTCODE_INPUT = 'postcode-input'
  GENDER_SELECT = 'gender-input'
  SUBMIT_BUTTON = 'submit-button'
  YES_BUTTON = 'button__text-wrapper'

  def visit_register_page
    visit(SIGN_IN_PAGE_URL)
  end

  def click_register_link
    click_link(REGISTER_LINK_TEXT)
  end


  def input_day_form(num)
    fill_in(DAY_INPUT_FIELD, with: num)
  end

  def input_month_form(num)
    fill_in(MONTH_INPUT_FIELD, with: num)
  end

  def input_year_form(num)
    fill_in(YEAR_INPUT_FIELD, with: num)
  end

  def continue_button
    find(:id, CONTINUE_BUTTON)
  end

  def click_continue_button
    continue_button.click
  end

  def incorrect_age_error_message
    find(:id, FORM_MESSAGE).text
  end

  def return_correct_message
    FUTURE_DATE_MESSAGE
  end

  def username_field
    find(:id, EMAIL_INPUT)
  end

  def fill_username_field(newemail)
    fill_in(EMAIL_INPUT, with: newemail)
  end

  def fill_password_field(newpassword)
    fill_in(PASSWORD_INPUT, with: newpassword)
  end

  def fill_postcode_field(newpostcode)
    fill_in(POSTCODE_INPUT, with: newpostcode)
  end


  def choose_gender
    select('Male', :from => GENDER_SELECT)
  end

  def click_register_button
    find(:id, SUBMIT_BUTTON).click
  end

  def click_yes_please_button
    find(:class, YES_BUTTON).click
  end






end
