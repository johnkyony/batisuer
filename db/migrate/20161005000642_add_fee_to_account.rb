class AddFeeToAccount < ActiveRecord::Migration
  def change
    add_reference :accounts, :fee, index: true, foreign_key: true
  end
end
