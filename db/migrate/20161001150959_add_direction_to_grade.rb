class AddDirectionToGrade < ActiveRecord::Migration
  def change
    add_reference :grades, :direction, index: true, foreign_key: true
  end
end
