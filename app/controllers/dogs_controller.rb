class DogsController < ApplicationController

  def index
    @dog = Dog.all
  end

  def new

  end

  def create
    Dog.create({:name => params[:name], :breed => params[:breed]})
    redirect_to "/dogs"
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    Dog.update(params[:id], {:name => params[:name], :breed => params[:breed]})
    redirect_to "/dogs/#{params[:id]}"
  end

end