module Admin
  class UsersController < ApplicationController
    before_action :check_admin

    def index
      @users = User.all
    end

    def new
      @user = User.new()
      @user.build_address
      @states = State.all.map { |t| [t.state_name, t.id] }
      @cities = {}
    end

    def create
      @user = User.new(params[user_params])
      if @user.save
        redirect_to new_admin_user_path
      end
    end

    def edit
      @user = User.find(params[:id])
      @states = State.all.pluck(:state_name, :id)
      @cities = @user.address.state.cities.pluck(:city_name, :id)
    end

    def city
      @cities = City.where(state_id: params[:state_id])
      respond_to do |format|
        format.json {render json: @cities.as_json(only: [:id, :city_name]) }
      end
    end

    private

    def user_params
      params.require(:user).permit(:name, :email, :password, :role, :date_of_birth, address_attributes: [ :id, :state_id, :city_id, :country ])
    end
  end  
end