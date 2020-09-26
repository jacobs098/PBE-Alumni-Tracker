class Alumni < ApplicationRecord
  has_secure_password
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :degree,  presence: true
  validates :job_title,  presence: true
  validates :phone_number,  presence: true
  validates :graduation_year,  presence: true
end