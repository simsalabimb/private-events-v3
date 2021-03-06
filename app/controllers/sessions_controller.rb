class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :welcome]

  def new
  end

  def login
  end

  def welcome
  end

  def create
    @user = User.find_by(username: params[:username])
    session[:user_id] = @user.id
    redirect_to '/welcome'
  end


  def page_requires_login
  end
  

  private

  def login_params
    params.require(:login).permit(:username)
  end
end
