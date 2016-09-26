class RemoveImageDataFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :image_data, :text
  end
end
