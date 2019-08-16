class SweetsController < ApplicationController
  before_action :find_sweet, only: [:show, :edit, :update, :destroy]

  def index
    @sweets = Sweet.all
  end

  def show
    @vendors = @sweet.vendors
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def find_sweet
    @sweet = Sweet.find(params[:id])
  end

  def sweet_params
    params.require(:sweet).permit(:name)
  end

end
