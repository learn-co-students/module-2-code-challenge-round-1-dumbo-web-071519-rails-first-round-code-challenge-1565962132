class VendorSweetsController < ApplicationController
# before_action :find_vendor_sweet, only [:show, :update, :edit]
    before_action :find_vendor_sweet, only: [:show, :edit, :update]
    def index
        @vendor_sweets = VendorSweet.all
    end

    def show
       
    end
    
    def new
        @vendor_sweet = VendorSweet.new
    
    end

    def create
        @vendor_sweet = VendorSweet.create(params_vendor_sweet)
         if @vendor_sweet.valid?
            redirect_to @vendor_sweet
           else
            flash[:errors]=@vendor_sweet.errors.full_messages
            redirect_to new_vendor_sweet_path
        end
    end

    def edit
        
    end

    def update
        @vendor_sweet.update(params_vendor_sweet)
          if @vendor_sweet.valid?
            redirect_to @vendor_sweet
           else
            flash[:errors]=@vendor_sweet.errors.full_messages
            redirect_to edit_vendor_sweet_path
        end
    end

    

    private

    def find_vendor_sweet
        @vendor_sweet=VendorSweet.find(params[:id])
    end

    def params_vendor_sweet
        params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
    end

end
