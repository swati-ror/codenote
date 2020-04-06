module Admin
  class UsersController < ApplicationController
    before_action :check_admin

    def index
      @users = User.all
    end

    def new
      @user = User.new()
      @user.build_address
    end

    def create
      @user = User.new(params[user_params])
      if @user.save
        redirect_to new_admin_user_path
      end
    end

    def edit
      @user = User.find(params[:id])
    end

    private

    def user_params
      params.require(:user).permit(:name, :email, :password, :role, :date_of_birth, address_attributes: [ :address, :city, :country ])
    end
  end  
end