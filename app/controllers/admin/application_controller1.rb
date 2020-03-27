module Admin
  class ApplicationController1 < ActionController::Base
    # def authenticate_admin!
    #   authorized
    #   unless current_user.role == 'admin' 
    #     flash['message'] = 'You are not authorized to view that page.'  
    #     redirect_to root_path
    #   end
    # end

    # def check_admin
    #   if current_user && current_user.role == 'admin'
    #     redirect_to @user
    #   end
    # end
  end
end