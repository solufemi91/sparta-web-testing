require 'spec_helper'

describe 'testing the demoqa registration page' do

  before(:all) do
    @driver = SeleniumDemoReg.new
    @driver.access_registration_form
    @hobbie = @driver.genarate_random_hobby
  end

  context 'positive paths for the registration form and register' do

    it 'should land on the registration for page' do
      expect(@driver.current_url).to eq 'http://demoqa.com/registration/'
    end

    it 'should accept a first name' do
      expect(@driver.first_name_field_displayed).to be true
      @driver.set_first_name_field('Steven')
      expect(@driver.get_first_name_field_value).to eq 'Steven'
    end

    it 'should accept a last name' do
      expect(@driver.last_name_field_displayed).to be true
      @driver.set_last_name_field('Olufemi')
      expect(@driver.get_last_name_field_value).to eq 'Olufemi'
    end

    it 'should accept a marital status selection of Single, Married, or Divorced' do


    end

    it 'should accept a hobby status selection of Dance, Reading, or Cricket' do
      @driver.select_hobby_option(@hobbie)
      expect(@driver.check_if_selected_hobby_is_made).to eq('dance').or(eq('reading')).or(eq('cricket '))

    end

    it 'should have a country default of Afhghanistan' do
    end

    it 'accept a new DOB' do

    end

    it 'should accept a new country value' do

    end

    it 'should accept a valid phone number' do

    end

    it 'should accept a username' do

    end

    it 'should accept a about yourself text' do

    end

    it 'should accept a password' do

    end

    it 'should accept a password confirmation' do

    end

  end

end
