class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.date :payment_date
      t.integer :month
      t.integer :year
      t.references :student
      t.timestamps null: false
    end
  end
end
