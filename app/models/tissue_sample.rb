class TissueSample < ActiveRecord::Base
  belongs_to :user
  
  validates :description, :length => { :maximum => 140 }
end
