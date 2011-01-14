class Submission < ActiveRecord::Base
  belongs_to :user
  
  validates :title, :authors, :body, :presence => true
  validates :title, :authors, :length => { :maximum => 255 }
  validates :body, :length => { :maximum => 1600 }
  
  def pdf_filename
    self.title.gsub(/[^0-9A-Za-z]/, '_') + Time.now.to_i.to_s
  end
end
