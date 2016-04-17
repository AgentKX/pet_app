class ChangeColumnInFavoritePets < ActiveRecord::Migration
  def change
    remove_column :favorite_pets, :pet_id, :integer
    add_column :favorite_pets, :pet_id, :integer
  end
end
