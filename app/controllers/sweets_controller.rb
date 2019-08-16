class SweetsController < ApplicationController
  def index
    @sweets = Sweet.all
  end

  def show
    @sweet = Sweet.find(params[:id])
  end

  def new 
    @sweet = Sweet.new
  end

  def create
    @sweet = Sweet.create(sweet_params)
    if @sweet.valid?
      @sweet.save
      redirect_to sweet_path(@sweet)
    else 
      flash[:errors] = @sweet.errors.full_messages
      redirect_to new_sweet_path
    end
  end

  def edit
    @sweet = Sweet.find(params[:id])
  end

  def update
    @sweet = Sweet.find(params[:id])
    if @sweet.update(sweet_params)
      redirect_to sweet_path(@sweet)
    else  
      flash[:errors] = @sweet.errors.full_messages
      redirect_to edit_sweet_path(@sweet)
    end
  end

  

  private 

  def sweet_params
    params.require(:sweet).permit(:name)
  end











end
