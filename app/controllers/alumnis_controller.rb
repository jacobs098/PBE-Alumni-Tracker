class AlumnisController < ApplicationController

  before_action :confirm_logged_in, :except => [:new, :create]

  def index
    @alumnis = Alumni.all
  end

  def show
    @alumni = Alumni.find(params[:id])
  end

  def user_info
    @alumni = Alumni.find(params[:id])
  end

  def new
    @alumni = Alumni.new
  end

  def create
    @alumni = Alumni.new(alumni_params)
    if @alumni.save
      session[:alumni_id] = @alumni.id
      redirect_to(user_info_alumni_path(@alumni))
    else
      render('new')
    end
  end

  def edit
    @alumni = Alumni.find(params[:id])
  end

  def update
    @alumni = Alumni.find(params[:id])
    if @alumni.update_attributes(alumni_params)
      redirect_to(user_info_alumni_path(@alumni))
    else
      render('edit')
    end
  end

  def delete
    @alumni = Alumni.find(params[:id])
  end

  def destroy
    @alumni = Alumni.find(params[:id])
    @alumni.destroy
    session[:alumni_id] = nil
    redirect_to(root_path)
  end

  private

  def alumni_params
    params.require(:alumni).permit(:first_name, :last_name, :email, :degree, :job_title, :phone_number, :graduation_year, :password)
  end
end
