class Alumni < ApplicationRecord
  def self.authenticate(email="", login_password="")
    user = User.find_by_email(username_or_email)
    if user && password = login_password
      return user
    else
      return false
    end
  end
end
