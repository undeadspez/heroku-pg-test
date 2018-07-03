class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(allowed_params)
    if @animal.save
      flash[:success] = "Animal was added to the index successfully!"
      redirect_to action: 'index'
    else
      render 'new'
    end
  end

  def delete
    if Animal.delete_all > 0
      flash[:warning] = "All entries were removed successfully"
    end
    redirect_to action: 'index'
  end

  private

    def allowed_params
      params.require(:animal).permit(:name, :species)
    end

end
