class Sphere < ActiveRecord::Base
  belongs_to :actor
  
  has_many :relations

  validates_presence_of :name
  validates_uniqueness_of :name, :scope => :actor_id
end
