class Screening < ActiveRecord::Base
  attr_accessible :title_id
  
  belongs_to :user
  has_many :movies
end
