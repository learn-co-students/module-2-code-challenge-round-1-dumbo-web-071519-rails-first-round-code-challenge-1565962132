class VendorSweetsController < ApplicationController
  before_action :find_vendorsweet, only: [:show, :edit, :update, :destroy]

  def index

  end

  def show

  end

  def new
    @vendorsweet = VendorSweet.new
    @vendors = Vendor.all
    @sweets = Sweet.all
  end

  def create
    byebug
    @vendorsweet = VendorSweet.create!(vendor_params)
    redirect_to vendor_sweet_path(@vendorsweet)
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def find_vendorsweet
    @vendorsweet = VendorSweet.find(params[:id])
  end

  def vendor_params
    params.require(:vendor_sweet).permit(:price, :vendor_id, :sweet_id)
  end

end
