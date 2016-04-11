class PetsController < ApplicationController
  
  def index
    @pets = Pet.all 
    render 'index.html.erb'
  end

  def show
    pet_id = params[:id]
    @pet = Pet.find_by(id: pet_id)
    render 'show.html.erb'
  end
end
