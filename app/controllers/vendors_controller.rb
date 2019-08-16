class VendorsController < ApplicationController
  before_action :find_vendor, only:[:show, :edit, :update, :destroy]

  def index
    @vendors = Vendor.all
  end

  def show

    get_orders

  end
  

  private

  def find_vendor
    @vendor = Vendor.find(params[:id])
  end

  def get_orders
    #@sweets = VendorSweet.where(vendor_sweet.vendor_id, @vendor.id)
  end

end
