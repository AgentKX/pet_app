class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :image
      t.string :gender
      t.string :breed
      t.string :weight
      t.string :color
      t.string :age
      t.text :description
      t.boolean :special_needs
      t.integer :energy_level
      t.boolean :needs_yard
      t.boolean :kids_ok
      t.decimal :fees, precision: 5, scale: 2

      t.timestamps null: false
    end
  end
end
