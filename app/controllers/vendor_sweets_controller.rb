class VendorSweetsController < ApplicationController
    before_action :find_vsweet, only: [:show, :edit, :update, :destroy]

  
  def index
    @vsweets = VendorSweet.all
  end
  
  def show
      #@vsweet = VendorSweet.find(params[:id])
  end

  def new
    @vsweet = VendorSweet.new
  end

  def edit
      #@vsweet = VendorSweet.find(params[:id])
  end

  def create
      @vsweet = VendorSweet.create(vsweet_params)
      redirect_to @sweet
  end

  def update
    #@vsweet = VendorSweet.find(params[:id])
    @vsweet.update(vsweet_params)
    redirect_to @vsweet
  end

  def destroy
      @vsweet.destroy
      redirect_to new_vsweet_path
  end

  private

    def find_vsweet
      @vsweet = VendorSweet.find(params[:id])
    end

    def vsweet_params
      params.require(:vsweet).permit(:sweet_id, :vendor_id)
    end
end
