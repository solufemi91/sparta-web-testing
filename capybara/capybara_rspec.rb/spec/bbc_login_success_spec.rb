require 'spec_helper'

describe 'correct user details produces valid screen' do

  after(:all)do
      Capybara.current_session.driver.quit
  end

  context 'it should respond with the correct screen when correct details are input' do

    it 'should produce the correct screen when inputting a correct password to a valid account' do
      @bbc_site = BbcSite.new
      @bbc_site.bbc_homepage.visit_home_page
      @bbc_site.bbc_homepage.click_sign_in_link
      @bbc_site.bbc_sign_in_page.fill_in_username('bamideleolu@outlook.com')
      @bbc_site.bbc_sign_in_page.fill_in_password('whsmith2')
      @bbc_site.bbc_sign_in_page.click_sign_in_button
      expect(@bbc_site.bbc_homepage.sign_in_link_text).to eq('Your account')
    end





  end

end
