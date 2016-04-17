class CreateFavoritePets < ActiveRecord::Migration
  def change
    create_table :favorite_pets do |t|
      t.string :name
      t.string :image
      t.string :description

      t.timestamps null: false
    end
  end
end
