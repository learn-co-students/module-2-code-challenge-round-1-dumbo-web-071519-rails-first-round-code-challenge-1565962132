class VendorSweetsController < ApplicationController
    before_action :find_vendor_sweet, only: [:show, :edit, :update, :destroy]
  

    def index
      @vendor_sweets = VendorSweet.all
    end
  


    def show
    end
  


    def new
      @vendor_sweet = VendorSweet.new
    end
  


    def edit
    end



    def create
        @vendor_sweet = VendorSweet.new(vendor_sweet_params)
        redirect_to @vendor_sweet
    
    end
  


    def update
        redirect_to @vendor_sweet
      end
    end
  


    def destroy
      @vendor_sweet.destroy
    end
  




    private
    
      def find_vendor_sweet
        @vendor_sweet = VendorSweet.find(params[:id])
      end
  
      

      def vendor_sweet_params
        params.require(:vendor_sweet).permit(:price, :vendor_id, :sweet_id)
      end
  end
  