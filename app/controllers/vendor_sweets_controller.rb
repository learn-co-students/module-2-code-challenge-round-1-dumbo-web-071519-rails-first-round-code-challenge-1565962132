class VendorSweetsController < ApplicationController

  before_action :find_vendor_sweet, only: [:edit]

  def new
    @vendor_sweet = VendorSweet.new()
    @sweets = Sweet.all
    @vendors = Vendor.all
  end

  def create
    @vendor_sweet = VendorSweet.create(vendor_sweet_params)
    if @vendor_sweet.valid?
      redirect_to @vendor_sweet.vendor
    else
      flash[:errors] = @vendor_sweet.errors.full_messages
      @sweets = Sweet.all
      @vendors = Vendor.all
      render :new
    end
  end

  def edit
  end

  private

  def find_vendor_sweet
    @vendor_sweet = VendorSweet.find(params[:id])
  end

  def vendor_sweet_params
    params.require(:vendor_sweet).permit(:price, :vendor_id, :sweet_id)
  end

end
