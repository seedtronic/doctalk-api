class RemoveLatLngFromDoctors < ActiveRecord::Migration[5.1]
  def change
    remove_column :doctors, :lat, :float
    remove_column :doctors, :lng, :float
  end
end
