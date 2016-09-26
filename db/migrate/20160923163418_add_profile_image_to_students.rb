class AddProfileImageToStudents < ActiveRecord::Migration
  def change
    add_column :students, :profile_image_id, :string
  end
end
