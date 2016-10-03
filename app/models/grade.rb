class Grade < ActiveRecord::Base
  belongs_to :direction
  has_many :fee  
  has_many :stream
  validates_presence_of :name
  validates_uniqueness_of :name
end
