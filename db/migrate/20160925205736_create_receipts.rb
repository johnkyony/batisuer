class CreateReceipts < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.references :student, index: true, foreign_key: true
      t.integer :amount

      t.timestamps null: false
    end
  end
end
