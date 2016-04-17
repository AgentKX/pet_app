class RemoveNameAndImageAndDescriptionFromFavoritePets < ActiveRecord::Migration
  def change
    remove_column :favorite_pets, :name, :string
    remove_column :favorite_pets, :image, :string
    remove_column :favorite_pets, :description, :string
  end
end
