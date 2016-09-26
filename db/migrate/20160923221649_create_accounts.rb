class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.references :student, index: true, foreign_key: true
      t.references :grade, index: true, foreign_key: true
      t.integer :amount

      t.timestamps null: false
    end
  end
end
