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
