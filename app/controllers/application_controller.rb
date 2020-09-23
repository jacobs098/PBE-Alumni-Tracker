class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def confirm_logged_in
    unless session[:alumni_id]
      flash[:notice] = "Please log in"
      redirect_to(home_login_path)
    end
  end
end
