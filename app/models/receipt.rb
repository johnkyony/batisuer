class Receipt < ActiveRecord::Base
  belongs_to :student
  validates_presence_of :student
  validates_presence_of :amount
end
