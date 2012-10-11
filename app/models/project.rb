class Project < ActiveRecord::Base
  attr_accessible :description, :title, :user_id
  
  belongs_to :user
  has_many :links
  has_many :categories

  
  validates :title, :presence => true
  validates :description, :presence => true
  
  
end

class String
  def initial
    self[0,8]
  end
end