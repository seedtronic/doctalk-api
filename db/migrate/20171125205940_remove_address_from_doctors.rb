class RemoveAddressFromDoctors < ActiveRecord::Migration[5.1]
  def change
    remove_column :doctors, :address, :string
  end
end
