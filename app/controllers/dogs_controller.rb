class DogsController < ApplicationController

  def index
    @dog = Dog.all
  end

  def new

  end

  def create
    Dog.create({:name => params[:name], :breed => params[:breed]})
    redirect_to '/dogs'
  end

end