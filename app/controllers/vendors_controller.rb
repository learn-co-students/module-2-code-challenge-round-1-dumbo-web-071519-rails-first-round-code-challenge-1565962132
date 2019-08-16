class VendorsController < ApplicationController
    before_action :find_vendor, only: [:show, :edit] 

    def index
      @vendors = Vendor.all
    end

    #Once the `Vendor` is created, we'd like to go to the selected vendor's show page.
    def show
      @sweets = @vendor.sweets
      @vendor_sweets = @vendor.vendor_sweets
    end

    def new
        @vendor = Vendor.new
    end
    
    def create
        @vendor = Vendor.create(vendor_params)
        redirect_to @vendor
    end
    
    private

    def find_vendor 
        @vendor = Vendor.find(params[:id])
    end

    def vendor_params
        params.require(:vendor).permit(:name)
    end

end
