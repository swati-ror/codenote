class ApplicationController < ActionController::Base
  before_action :authorized, except: [:new, :login]
  helper_method :current_user, :logged_in?

  def current_user   
    @current_user ||= User.find_by(email: session[:email]) 
  end 

  def logged_in?
    !current_user.nil?
  end

  def authorized
    redirect_to '/' unless logged_in?
  end

  def check_admin
    if current_user && current_user.role == 'employee'
      flash['message'] = 'Insufficient privileges.'
      redirect_to home_path
    end
  end

  def check_employee
    if current_user && current_user.role == 'admin'
      flash['message'] = 'Only for employee pages.'
      redirect_to home_path
    end
  end
end
