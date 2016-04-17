class Pet < ActiveRecord::Base
  has_many :favorite_pets
  has_many :users, through: :favorite_pets
  #Both Adopter and Shelter Users
end
