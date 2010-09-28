class Movie < ActiveRecord::Base
  attr_accessible :title_id, :title

  belongs_to :screening
  validates_presence_of :title_id
  
  def self.search(search)
    search_condition = "%" + search + "%"
    find(:all, :conditions => ['title LIKE ? OR director LIKE ?', search_condition, search_condition])
  end
end
