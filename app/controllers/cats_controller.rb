class CatsController < ApplicationController

  def index
    @cats = Cat.all
  end

  def new
    @cat = Cat.new
  end

  def create
    @cat =Cat.new(allowed_paramaters)

    if @cat.save
      redirect_to cats_path
    else
      render :new
    end
  end

  private

  def allowed_paramaters
    params.require(:cat).permit(:name, :color)
  end

end