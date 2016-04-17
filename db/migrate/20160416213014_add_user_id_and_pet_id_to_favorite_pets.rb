class AddUserIdAndPetIdToFavoritePets < ActiveRecord::Migration
  def change
    add_column :favorite_pets, :user_id, :integer
    add_column :favorite_pets, :pet_id, :integer
  end
end
