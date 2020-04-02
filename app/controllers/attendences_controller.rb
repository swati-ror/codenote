class AttendencesController < ApplicationController
  def index
    @attendences =  Attendence.where(user_id: params[:user_id])
  end

  def create
    @attendence = current_user.attendences.build(attendence_params)
    if @attendence.save
       flash['message'] = 'successfully saved.'
       redirect_to home_path
    else
      flash['message'] = 'your attendence marked as absent.' 
      redirect_to home_path
    end
  end

  def edit
    @attendence = current_user.attendences.find(params[:id])
  end
  
  def update
    @attendence = current_user.attendences.find(params[:id])
    if @attendence.update(attendence_params) && current_user.attendences.where('DATE(created_at) = ?', Date.today).first
      flash['message'] = 'successfully update.'
      redirect_to home_path
    else
      render 'home'
    end
  end

  def show_list
    @attendences = Attendence.all
  end
  
  private
    def attendence_params
      params.require(:attendence).permit(:in_time, :out_time, :break)
    end
    # def has_updated?
    #   if Attendence.where(user_id: :current_user.id, id: params[:id]).any?
    #     redirect_to :home, alert: "You have already updated"
    #   end
    # end
end