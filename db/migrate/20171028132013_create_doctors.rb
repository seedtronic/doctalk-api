class CreateDoctors < ActiveRecord::Migration[5.1]
  def change
    create_table :doctors do |t|
      t.string :name, null: false
      t.decimal :lat
      t.decimal :lng
      t.string :address
      t.timestamps null: false
    end
  end
end
