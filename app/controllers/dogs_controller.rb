class DogsController < ApplicationController
  
  def index
    @dogs = Dog.all
  end

  def new
    @dog = Dog.new
  end

  def create
    Dog.create(dog_params)
    redirect_to dogs_path
  end

  private
  
  def dog_params
    params.require(:dog).permit(:name, :description)
  end
end
