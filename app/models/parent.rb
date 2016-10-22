# == Schema Information
#
# Table name: parents
#
#  id           :integer          not null, primary key
#  name         :string
#  surname      :string
#  phone_number :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Parent < ActiveRecord::Base
  has_many :student
  validates_presence_of :name
  validates_presence_of :surname
  validates_presence_of :phone_number
  validates_uniqueness_of :phone_number
end
