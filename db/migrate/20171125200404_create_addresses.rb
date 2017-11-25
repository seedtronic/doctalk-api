class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.references :addressable, polymorphic: true, index: true, null: false
      t.string :street, null: false
      t.string :number, null: false
      t.string :complement
      t.string :city, null: false
      t.string :state, null: false
      t.string :zipcode, null: false
      t.float :lat, null: false
      t.float :lng, null: false

      t.timestamps null: false
    end
  end
end
