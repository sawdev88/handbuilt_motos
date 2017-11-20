class RemovePhoneToUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :phone, :numeric
  end
end
