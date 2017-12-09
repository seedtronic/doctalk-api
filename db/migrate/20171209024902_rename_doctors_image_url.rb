class RenameDoctorsImageUrl < ActiveRecord::Migration[5.1]
  def change
    rename_column :doctors, :image_url, :photo_url
  end
end
