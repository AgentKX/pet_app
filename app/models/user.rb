class User < ActiveRecord::Base
  has_many :pets
  has_many :favorite_pets
  has_many :pets, through: :favorite_pets
 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
