class VendorsweetsController < ApplicationController



  def vendorsweet_params
    params.require(:vendorsweet).permit(:vendor_id, :sweet_id, :price)
  end

  def new
    @vendorsweet = Vendorsweet.new
    @vendors = Vendor.all
    @sweets = Sweet.all
  end

  def create
    @vendorsweet = Vendorsweet.create(vendorsweet_params)
    if @vendorsweet.valid?
     redirect_to vendors_path
   else
     flash[:errors] = @vendorsweet.errors.full_messages
     redirect_to new_vendorsweet_path
   end
 end
end
