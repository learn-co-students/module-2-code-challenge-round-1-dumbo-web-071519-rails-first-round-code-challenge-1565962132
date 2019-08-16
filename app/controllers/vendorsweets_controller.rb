class VendorsweetsController < ApplicationController
before_action :find_vendorsweeet , only: [:show, :edit, :update, :destroy]

def index
    @vendorsweets = Vendorsweet.all
end

def show

end

def new
    @vendorsweet = Vendorsweet.new
   
end

def create
    
    @vendorsweet = Vendorsweet.new(vendorsweet_params)
    @vendor = Vendor.find(params[:id])
   if @vendorsweet.valid?
        @vendorsweet.save
        redirect_to vendor_path(@vendor)
    else
        flash[:errors] = @vendorsweet.errors.full_messages
    end
end


def find_vendorsweeet
    @vendorsweet = Vendorsweet.find(params[:id])
end

def vendorsweet_params
    params.require(:vendorsweet).permit(:vendor_id, :sweet_id, :price)
end


end
