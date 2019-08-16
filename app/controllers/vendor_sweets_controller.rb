class VendorSweetsController < ApplicationController

    def index 
@vendor_sweets = VendorSweet.all
    end

    def new
        @vendor_sweets = VendorSweet.new
      end
    
      def create
        @vendorsweet = VendorSweet.create(vendor_sweet_params)
    
        redirect_to vendors_path
      end

      def show 

      end


    
      private
    
      def vendor_sweet_params
        params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
      end
   
end
