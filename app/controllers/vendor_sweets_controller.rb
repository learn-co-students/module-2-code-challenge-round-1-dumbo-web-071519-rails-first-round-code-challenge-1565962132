class VendorSweetsController < ApplicationController

    def new
        @vendor_sweet = VendorSweet.new
        @sweets = Sweet.all
        @vendors = Vendor.all
    end

    def create
        @vendor_sweet = VendorSweet.create(params)

        redirect_to #vendor_path(@vendor_sweet.vendor_id)
    end






end
