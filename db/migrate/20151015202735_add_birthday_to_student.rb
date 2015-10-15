class AddBirthdayToStudent < ActiveRecord::Migration
  def change
    add_column :students, :birthdate, :Date
  end
end
