class SweetsController < ApplicationController
  before_action :find_sweet, only: [:show, :edit, :update, :destroy]

  #/sweets
  def index
    @sweets = Sweet.all
  end
  #/sweets/:id
  def show
      #@sweet = Sweet.find(params[:id])
  end

  #/sweets/new
  def new
    @sweet = Sweet.new
  end

  #/sweets/:id/edit
  def edit
      #@sweet = Sweet.find(params[:id])
  end

  #/sweets
  def create
      @sweet = Sweet.create(sweet_params)
      redirect_to @sweet
  end

  #/sweets/:id
  def update
    #@sweet = Sweet.find(params[:id])
    @sweet.update(sweet_params)
    redirect_to @sweet
  end

  #/sweets/:id
  def destroy
      @sweet.destroy
      redirect_to new_sweet_path
  end

  private

    def find_sweet
      @sweet = Sweet.find(params[:id])
    end

    def sweet_params
      params.require(:sweet).permit(:name)
    end
end

end
