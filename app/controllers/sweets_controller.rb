class SweetsController < ApplicationController
  def index
    @sweets = Sweet.all
  end
  
  def show
    @sweet = Sweet.find(params[:id])
    #This is an array of vendor instances that are associated with that sweet
    #Again, these are instances~
    @vendors = @sweet.vendors.uniq
  end
end
