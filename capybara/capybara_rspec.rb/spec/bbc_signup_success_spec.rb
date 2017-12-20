require 'spec_helper'

describe 'correct details to signup produces succesful signup' do

  after(:all)do
      Capybara.current_session.driver.quit
  end

  context 'it should respond with the correct screen when correct sign up details are inputted' do

    it "it should produce a succesful sign up page when you enter all the necessary details" do
      @bbc_site = BbcSite.new
      @bbc_site.bbc_register_page.visit_register_page
      # sleep 2
      @bbc_site.bbc_register_page.click_register_link
      # sleep 2
      @bbc_site.bbc_register_page.input_day_form('20')
      # sleep 2
      @bbc_site.bbc_register_page.input_month_form('4')
      # sleep 2
      @bbc_site.bbc_register_page.input_year_form('1991')

      @bbc_site.bbc_register_page.click_continue_button

      @bbc_site.bbc_register_page.fill_username_field('bamideleolu@outlook.com')
      @bbc_site.bbc_register_page.fill_password_field('whsmith2')
      @bbc_site.bbc_register_page.fill_postcode_field('TW91AP')
      @bbc_site.bbc_register_page.choose_gender
      sleep 8
      @bbc_site.bbc_register_page.click_yes_please_button
      sleep 4
      @bbc_site.bbc_register_page.click_register_button
      sleep 4
      # expect(@bbc_site.bbc_register_page.incorrect_age_error_message).to eq @bbc_site.bbc_register_page.return_correct_message
    end


  end

end
