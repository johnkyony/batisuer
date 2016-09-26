class Grade < ActiveRecord::Base
  has_many :fee
  validates_presence_of :name
end
