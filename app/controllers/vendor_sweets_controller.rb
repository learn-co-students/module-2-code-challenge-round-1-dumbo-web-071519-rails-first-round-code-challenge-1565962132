class VendorSweetsController < ApplicationController
    def new
        @vsweet = VendorSweet.new
    end
    
    def create
        @vsweet = VendorSweet.create(vsweet_params)
        if @vsweet.valid?
            redirect_to @vsweet.vendor
        else
            flash[:errors] = @vsweet.errors.full_messages
            redirect_to new_vendor_sweet_path
        end
    end

    private

    def vsweet_params
        params.require(:vendor_sweet).permit(:price, :vendor_id, :sweet_id)
    end
end
