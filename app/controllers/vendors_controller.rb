class VendorsController < ApplicationController
  before_action :find_vendor, only: [:show]

  def index
    @vendors = Vendor.all
  end

  def show
    # @sweets = Sweet.all
  end

 

  private

  def find_vendor
    @vendor = Vendor.find(params[:id])
  end
end
