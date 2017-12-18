require 'selenium-webdriver'

class SeleniumQatoolsForm
  PRACTICE_FORM_URL = 'http://toolsqa.com/automation-practice-form/'
  FIRST_NAME_FIELD_NAME = 'firstname'
  LAST_NAME_FIELD_NAME = 'lastname'
  MALE_SEX_RADIOBUTTON = 'sex-0'
  FEMALE_SEX_RADIOBUTTON = 'sex-1'
  YEARS_OF_EXPERIENCE_RADIOBUTTON = 'exp-0'
  DATE_FIELD = 'datepicker'
  PROFESSION_BOX = 'profession-0'
  AUTOMATION_TOOL_BOX = 'tool-0'
  CONTINENTS_CLICKER = 'continents'

  def initialize
    @chrome_driver = Selenium::WebDriver.for :chrome
  end

  def visit_practice_form
    @chrome_driver.get(PRACTICE_FORM_URL)
  end

  def input_firstname_field(text)
    @chrome_driver.find_element(:name, FIRST_NAME_FIELD_NAME).send_keys(text)
  end

  def input_lastname_field(text)
    @chrome_driver.find_element(:name, LAST_NAME_FIELD_NAME).send_keys(text)
  end

  def target_male_radio_button
    @chrome_driver.find_element(:id, MALE_SEX_RADIOBUTTON).click
  end

  def target_years_experience_button
    # @ random_value = rand(0..6)
    # @chrome_driver.find_element(:id, "exp-#{random_value}").click
    @chrome_driver.find_element(:id, YEARS_OF_EXPERIENCE_RADIOBUTTON).click
  end

  def target_date_field(text)
    @chrome_driver.find_element(:id, DATE_FIELD).send_keys(text)
  end

  def target_profession_box
    @chrome_driver.find_element(:id, PROFESSION_BOX).click
  end

  def target_automation_tool_box
    @chrome_driver.find_element(:id, AUTOMATION_TOOL_BOX).click
  end

  def target_continents_dropdown
    @chrome_driver.find_element(:id, CONTINENTS_CLICKER).click
  end






end


practice_form_page = SeleniumQatoolsForm.new
practice_form_page.visit_practice_form
practice_form_page.input_firstname_field('Steven')
sleep 2
practice_form_page.input_lastname_field('Olufemi')
sleep 2
practice_form_page.target_male_radio_button
sleep 2
practice_form_page.target_years_experience_button
sleep 2
practice_form_page.target_date_field('28/10/2017')
sleep 2
practice_form_page.target_profession_box
sleep 2
practice_form_page.target_automation_tool_box
sleep 4
practice_form_page.target_continents_dropdown
sleep 4
