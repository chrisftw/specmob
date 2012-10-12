class Category < ActiveRecord::Base
  attr_accessible :name, :description, :project_id
  
  belongs_to :project
  #has_many :categorizations
  has_many :links #, through: :categorizations
end
