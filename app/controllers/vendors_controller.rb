class VendorsController < ApplicationController
  before_action :find_vendor, only: [:show, :edit]

  def index
    @vendors = Vendor.all
  end

  def show
  end


  private
  def find_vendor
    @vendor = Vendor.find(vendor_params[:id])
  end

  def vendor_params
    params.permit(:id, :name)
  end

end
