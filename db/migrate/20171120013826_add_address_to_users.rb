class AddAddressToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :street_address, :string
  end
end
