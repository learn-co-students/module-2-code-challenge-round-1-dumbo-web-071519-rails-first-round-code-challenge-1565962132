class SweetsController < ApplicationController
  before_action :find_sweet, only: [:show, :edit] #update #destroy

  def index
    @sweets = Sweet.all
  end

  def show
  end

  def new
    @sweet = Sweet.new
  end

  def create
  end

  def edit
  end



  private

  def sweet_params
    params.permit(:id, :name)
  end

  def find_sweet
    @sweet = Sweet.find(sweet_params[:id])
  end


end
