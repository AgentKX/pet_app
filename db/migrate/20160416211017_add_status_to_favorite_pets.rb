class AddStatusToFavoritePets < ActiveRecord::Migration
  def change
    add_column :favorite_pets, :status, :string
  end
end
