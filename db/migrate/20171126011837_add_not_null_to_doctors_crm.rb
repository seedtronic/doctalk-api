class AddNotNullToDoctorsCrm < ActiveRecord::Migration[5.1]
  def change
    change_column :doctors, :crm, :string, null: false
  end
end
