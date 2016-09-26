class Parent < ActiveRecord::Base
  has_many :student
  validates_presence_of :name
  validates_presence_of :surname
  validates_presence_of :phone_number
  validates_uniqueness_of :phone_number
end
