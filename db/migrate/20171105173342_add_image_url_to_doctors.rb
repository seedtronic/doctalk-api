class AddImageUrlToDoctors < ActiveRecord::Migration[5.1]
  def change
    add_column :doctors, :image_url, :string
  end
end
