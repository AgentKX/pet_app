class FavoritePetsController < ApplicationController
  def index
    if current_user
      @favorite_pets = FavoritePet.where(user_id: current_user.id)
    else 
      redirect_to '/users/sign_in'
    end
  end

  def create
    pet_id = params[:pet_id].to_i
    user_id = current_user.id
    FavoritePet.create(
      pet_id: pet_id,
      user_id: user_id
    )
    redirect_to '/favorite_pets'
  end

  def delete
    @favorite_pet = FavoritePet.find(params[:id])
    @favorite_pet.destroy
    redirect_to '/favorite_pets'
  end

  def search_form
    search_term = params[:search]
    @pets = Pet.where("name LIKE ?", "%" + search_term + "%")
    render "index.html.erb"
  end

  devise_group :user, contains: [:user, :shelter]
end
