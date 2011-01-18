class Conference < ActiveRecord::Base
  
  validates :start_date, :end_date, :title, :submission_deadline, :presence => true
end
