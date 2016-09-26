class Account < ActiveRecord::Base
  belongs_to :student
  belongs_to :grade
  validates_presence_of :student
  validates_uniqueness_of :student
  validates_presence_of :grade
  validates_presence_of :amount
end
