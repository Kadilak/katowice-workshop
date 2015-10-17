class AddUniquenessOnPayment < ActiveRecord::Migration
  def change
  	add_index :payments, [:student_id, :month, :year], :unique => true
  end
end
