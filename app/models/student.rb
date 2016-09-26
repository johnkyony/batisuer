class Student < ActiveRecord::Base
  belongs_to :parent
  has_many :account
  has_many :receipt

  validates_presence_of :name
  validates_presence_of :surname
  validates_presence_of :parent

end
