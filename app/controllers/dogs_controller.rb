class DogsController < ApplicationController

  def index
    @dogs = Dog.all
  end

  def new
  end

  def create
    dog = Dog.new
    dog.name = params[:name]
    dog.breed = params[:breed]
    dog.save
    redirect_to '/'
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])
    @dog.name = params[:name]
    @dog.breed = params[:breed]
    @dog.save
    redirect_to '/'
  end

end


