class Attendence < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validate :mark_attendence_today, on: :create, if: :in_time? 
  validate :evening_attendence, on: :update, if: :out_time?


  private
  def in_time?
    if(Time.now.hour >= 9 && Time.now.hour <= 11)
      in_time.present?
    else 
      errors.add(:in_time, "your attendence for today marked as absent...!")
    end 
  end

  def out_time?
    if (Time.now.hour >= 18 && Time.now.hour <= 21)
      out_time.present?
    end 
  end

  def mark_attendence_today
    if in_time? 
      evening_attendence
    end
  end

  def evening_attendence
    if out_time?
      errors.add(:out_time, "saved")
    end
  end
end
