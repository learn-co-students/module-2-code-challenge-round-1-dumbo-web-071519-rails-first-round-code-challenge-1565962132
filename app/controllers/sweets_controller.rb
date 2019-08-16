class SweetsController < ApplicationController

  before_action :helper_sweet, only: [:show, :edit, :update, :destroy]

  def index
    @sweets = Sweet.all
  end



  def show
    
  end




  
  private
  
  def helper_sweet
    @sweet = Sweet.find(params[:id])
  end


  def sweet__params
    params.require(:sweet).permit(:name)
  end



end
