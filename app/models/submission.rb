class Submission < ActiveRecord::Base
  belongs_to :user
  
  validates :title, :authors, :body, :presence => true
end
