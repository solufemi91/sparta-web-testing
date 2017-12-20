require 'spec_helper'

describe 'Incorrect user details produces valid error' do

  after(:all)do
      Capybara.current_session.driver.quit
  end

  context 'it should respond with the correct error when incorrect details are input' do

    it 'should produce an error when inputting an incorrect password to a valid account' do
      @bbc_site = BbcSite.new
      @bbc_site.bbc_homepage.visit_home_page
      sleep 4
      @bbc_site.bbc_homepage.click_sign_in_link
      @bbc_site.bbc_sign_in_page.fill_in_username('solufemi-olukanni@hotmail.com')
      @bbc_site.bbc_sign_in_page.fill_in_password('doghduidiuhdue')
      @bbc_site.bbc_sign_in_page.click_sign_in_button
      expect(@bbc_site.bbc_sign_in_page.incorrect_password_text).to eq @bbc_site.bbc_sign_in_page.check_incorrect_password_text
      sleep 4
    end

    # it "should produce an error when inputting an incorrect username or email address" do
    #   @bbc_site = BbcSite.new
    #   @bbc_site.bbc_homepage.visit_home_page
    #   sleep 4
    #   # @bbc_site.bbc_homepage.click_sign_in_link
    #   # @bbc_site.bbc_sign_in_page.fill_in_username('123doodah')
    #   # @bbc_site.bbc_sign_in_page.fill_in_password('doghduidiuhdue')
    #   # sleep 4
    #   # @bbc_site.bbc_sign_in_page.click_sign_in_button
    #   # sleep 4
    #
    # #
    # end

  end

end
