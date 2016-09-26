class CreateFees < ActiveRecord::Migration
  def change
    create_table :fees do |t|
      t.references :grade, index: true, foreign_key: true
      t.integer :price

      t.timestamps null: false
    end
  end
end
