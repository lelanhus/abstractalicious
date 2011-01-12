class Submission < ActiveRecord::Base
  belongs_to :user
  
  validates :title, :authors, :body, :presence => true
  validates :title, :authors, :length => { :maximum => 255 }
  validates :body, :length => { :maximum => 1600 }
end
