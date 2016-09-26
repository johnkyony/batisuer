class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :name
      t.string :surname
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
