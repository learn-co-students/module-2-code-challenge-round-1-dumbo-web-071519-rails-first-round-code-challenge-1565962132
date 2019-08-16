class VendorsController < ApplicationController
  def index
    @vendors = Vendor.all
  end

  def show
    @vendor = Vendor.find(params[:id])
    #This is all of the VENDOR SWEETS instances that are associated with that vendor
    #These are instances~
    @vsweets = @vendor.vendor_sweets
  end
end
