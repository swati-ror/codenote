class UsersController < ApplicationController
  before_action :check_admin, only: [:new, :create, :update]
  before_action :check_employee, only: [:employee_page]

  def new
  end
 
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to home_path
    else
      render 'new'
    end
  end

  def update
      @user = User.find(params[:id])
      if @user.update(user_params) 
        redirect_to admin_users_path 
      else
         render 'home'
      end
  end

  def home
    
  end

  def admin_page
  end

  def employee_page
    if current_user.attendences.where('DATE(created_at) = ?', Date.today).present?
      @attendence = current_user.attendences.where('DATE(created_at) = ?', Date.today).first
    else
      @attendence = Attendence.new()
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :role)
  end
  
end
