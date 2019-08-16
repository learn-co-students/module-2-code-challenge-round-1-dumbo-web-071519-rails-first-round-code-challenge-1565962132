class VendorsController < ApplicationController

  before_action :find_vendor, only: [:show]

  def index
    @vendors = Vendor.all
  end

  def show
    @vendor_sweet = VendorSweet.find_by(vendor_id: @vendor)
  end

  private

  def find_vendor
    @vendor = Vendor.find(params[:id])
  end

end
