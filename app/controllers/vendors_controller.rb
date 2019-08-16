class VendorsController < ApplicationController



  before_action :helper_vendor, only: [:show, :edit, :update, :destroy]

  def index
    @vendors = Vendor.all
  end

  
  
  def show
    
  end




  

  private
  
  def helper_vendor
    @vendor = Vendor.find(params[:id])
  end


  def vendor__params
    params.require(:vendor).permit(:name)
  end


end
