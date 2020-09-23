class HomeController < ApplicationController
  def front
    # display home page
  end

  def login
    # login form
  end

  def attempt_login
    found_user = Alumni.where(:email => params[:email]).first
    if found_user
      authorized_user = found_user.authenticate(params[:password])
    end

    if authorized_user
      session[:alumni_id] = authorized_user.id
      redirect_to(user_info_alumni_path(authorized_user))
    else
      render('login')
    end
  end

  def logout
    session[:alumni_id] = nil
    redirect_to(root_path)
  end
end
