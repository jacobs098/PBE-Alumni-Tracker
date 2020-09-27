require 'rails_helper'

RSpec.describe Alumni, type: :model do
  it 'ensures first_name is present' do
    alumni = Alumni.new(last_name: 'bill', email: 'test@example.com', degree: 'BS', job_title: 'worker', phone_number: '2142142144', graduation_year: '2020', password: '123456').save
    expect(alumni).to eq(false)
  end

  it 'ensures last_name is present' do
    alumni = Alumni.new(first_name: 'first', email: 'test@example.com', degree: 'BS', job_title: 'worker', phone_number: '2142142144', graduation_year: '2020', password: '123456').save
    expect(alumni).to eq(false)
  end

  it 'ensures email is present' do
    alumni = Alumni.new(first_name: 'first', last_name: 'bill', degree: 'BS', job_title: 'worker', phone_number: '2142142144', graduation_year: '2020', password: '123456').save
    expect(alumni).to eq(false)
  end

  it 'ensures degree is present' do
    alumni = Alumni.new(first_name: 'first', last_name: 'bill', email: 'test@example.com',  job_title: 'worker', phone_number: '2142142144', graduation_year: '2020', password: '123456').save
    expect(alumni).to eq(false)
  end

  it 'ensures job_title is present' do
    alumni = Alumni.new(first_name: 'first', last_name: 'bill', email: 'test@example.com', degree: 'BS', phone_number: '2142142144', graduation_year: '2020', password: '123456').save
    expect(alumni).to eq(false)
  end

  it 'ensures phone_number is present' do
    alumni = Alumni.new(first_name: 'first', last_name: 'bill', email: 'test@example.com', degree: 'BS', job_title: 'worker', graduation_year: '2020', password: '123456').save
    expect(alumni).to eq(false)
  end

  it 'ensures graduation_year is present' do
    alumni = Alumni.new(first_name: 'first', last_name: 'bill', email: 'test@example.com', degree: 'BS', job_title: 'worker', phone_number: '2142142144', password: '123456').save
    expect(alumni).to eq(false)
  end

  it 'ensures password is present' do
    alumni = Alumni.new(first_name: 'first', last_name: 'bill', email: 'test@example.com', degree: 'BS', job_title: 'worker', phone_number: '2142142144', graduation_year: '2020').save
    expect(alumni).to eq(false)
  end

end

RSpec.describe HomeController, type: :model do
  describe '.attempt_login' do

    it 'ensures user enters a correct user-ID' do
      found_user = Alumni.where(:email =>'abc').first
      expect(found_user).to eq(nil)
    end

    it 'ensures user cannot get in by just pressing the log-in button' do
      found_user = Alumni.where(:email =>'').first
      expect(found_user).to eq(nil)
    end

    it 'ensures there is a proper user-ID' do
      alumni = Alumni.new(first_name: 'abc', last_name: 'abc', email: 'abc@gmail.com', degree: 'BS', job_title: 'worker', phone_number: '2142142144', graduation_year: '2020', password: 'abc').save
      found_user = Alumni.where(:email =>'abc@gmail.com').first
      expect(found_user).not_to eq(nil)
    end

    it 'ensures there is a proper user-password' do
      alumni = Alumni.new(first_name: 'abc', last_name: 'abc', email: 'abc@gmail.com', degree: 'BS', job_title: 'worker', phone_number: '2142142144', graduation_year: '2020', password: 'abc').save
      found_user = Alumni.where(:email =>'abc@gmail.com').first
      authorized_user = found_user.authenticate('abc')
      expect(authorized_user).not_to eq(nil)
    end

    it 'ensures user cannot login with a wrong password' do
      alumni = Alumni.new(first_name: 'abc', last_name: 'abc', email: 'abc@gmail.com', degree: 'BS', job_title: 'worker', phone_number: '2142142144', graduation_year: '2020', password: 'abc').save
      found_user = Alumni.where(:email =>'abc@gmail.com').first
      authorized_user = found_user.authenticate('bbb')
      expect(authorized_user).to eq(false)
    end

    it 'ensures user cannot login with just user-name' do
      alumni = Alumni.new(first_name: 'abc', last_name: 'abc', email: 'abc@gmail.com', degree: 'BS', job_title: 'worker', phone_number: '2142142144', graduation_year: '2020', password: 'abc').save
      found_user = Alumni.where(:email =>'abc@gmail.com').first
      authorized_user = found_user.authenticate('')
      expect(authorized_user).to eq(false)
    end


  end
end
