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

  def create
    Pet.create(
      name: params[:name], 
      image: params[:image], 
      description: params[:description]
    )
    render 'create.html.erb'
  end
end
