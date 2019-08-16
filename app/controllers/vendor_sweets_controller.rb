class VendorSweetsController < ApplicationController

    before_action :find_vendsweet, only:[:show, :edit, :update, :destroy]

    def index
        @vendor_sweets = VendorSweet.all 
    end

    def show

    end

    def new
        @vendor_sweet = VendorSweet.new()
        @vendors = Vendor.all 
        @sweets = Sweet.all
    end

    def create 
        @vendor_sweet = VendorSweet.create(vs_params)
        if(@vendor_sweet.valid?)
            redirect_to @vendor_sweet.vendor
        else
            flash[:errors] = @vendor_sweet.errors.full_messages
            redirect_to new_vendor_sweet_path
        end

    end




    private

    def find_vendsweet
        @vendor_sweet = VendorSweet.find(params[:id])
    end

    def vs_params
        params.require(:vendor_sweet).permit(:price, :vendor_id, :sweet_id)
    end

end
