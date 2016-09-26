class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :surname
      t.text :image_data
      t.references :parent, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
