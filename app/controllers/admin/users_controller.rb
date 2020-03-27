module Admin
  class UsersController < ApplicationController
    before_action :check_admin

    def index
      @user = User.all
    end

    def new
      @user = User.new()
    end

    def create
      @user = User.new(params[user_params])
      if @user.save
        redirect_to home_path
      end
    end

    def edit
      @user = User.find(params[:id])
    end

    private

    def user_params
      params.require(:user).permit(:email, :password, :role)
    end
  end  
end