class AddCrmToDoctors < ActiveRecord::Migration[5.1]
  def change
    add_column :doctors, :crm, :string
  end
end
