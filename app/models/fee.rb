class Fee < ActiveRecord::Base
  belongs_to :grade
  validates_presence_of :grade
  validates_presence_of :price
end
