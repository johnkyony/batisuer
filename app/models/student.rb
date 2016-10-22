# == Schema Information
#
# Table name: students
#
#  id               :integer          not null, primary key
#  name             :string
#  surname          :string
#  parent_id        :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  profile_image_id :string
#

class Student < ActiveRecord::Base
  has_many :parent
  has_many :account
  has_many :receipt

  validates_presence_of :name
  validates_presence_of :surname
  validates_presence_of :parent

  def self.search(search)
    where("name LIKE ?" , "%#{search}%")
    # where("surname LIKE ?" , "%#{search}%")
  end


end
