class VendorSweetsController < ApplicationController
    #before_action :get_vendor_sweet, only: [:show]
    
    def new
        @vendor_sweet = VendorSweet.new()
        @vendors = Vendor.all 
        @sweets = Sweet.all
    end

    def create 
        # need to use .new and validate before saving to avoid errors with custom validation
        @vendor_sweet = VendorSweet.new(vendor_sweet_params)
        if @vendor_sweet.valid?
            @vendor_sweet.save
            redirect_to(@vendor_sweet.vendor)
        else 
            flash[:errors] = @vendor_sweet.errors.full_messages
            redirect_to(new_vendor_sweet_path)
        end
    end
    private
    
    def vendor_sweet_params
    permitted = params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
    end
end
