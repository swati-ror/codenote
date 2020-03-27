class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:email] = @user.email
      flash['message'] = 'Login Successfully !!'
      redirect_to home_path
    else
      flash['message'] = 'Inavlid credentials'
      redirect_to root_path
    end
  end

  def logout
    session[:email] = nil
    flash['message'] = "Logged out...!"
    redirect_to root_path
  end

end
