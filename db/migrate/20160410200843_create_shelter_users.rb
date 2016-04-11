class CreateShelterUsers < ActiveRecord::Migration
  def change
    create_table :shelter_users do |t|
      t.string :shelter_name
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :email
      t.string :phone_number
      t.string :pet_name
      t.string :gender
      t.string :breed
      t.integer :weight
      t.string :color
      t.string :age
      t.text :description
      t.boolean :special_needs
      t.integer :energy_level
      t.boolean :needs_yard
      t.boolean :kids_ok
      t.decimal :fees, precision: 4, scale: 2

      t.timestamps null: false
    end
  end
end
