require 'spec_helper'

describe 'Incorrect details to signup produces valid error' do

  after(:all)do
      Capybara.current_session.driver.quit
  end

  context 'it should respond with the correct error when incorrect details are input' do

    it "it should produce an error message when there you enter a date in the future for the date of birth" do
      @bbc_site = BbcSite.new
      @bbc_site.bbc_register_page.visit_register_page
      # sleep 2
      @bbc_site.bbc_register_page.click_register_link
      # sleep 2
      @bbc_site.bbc_register_page.input_day_form('20')
      # sleep 2
      @bbc_site.bbc_register_page.input_month_form('4')
      # sleep 2
      @bbc_site.bbc_register_page.input_year_form('2020')

      @bbc_site.bbc_register_page.click_continue_button

      expect(@bbc_site.bbc_register_page.incorrect_age_error_message).to eq @bbc_site.bbc_register_page.return_correct_message
      sleep 8
    end


  end

end
