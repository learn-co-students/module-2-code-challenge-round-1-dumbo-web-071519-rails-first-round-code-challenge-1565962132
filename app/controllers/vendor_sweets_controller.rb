class VendorSweetsController < ApplicationController
    before_action :find_vendor_sweet, only: [:show, :edit, :update, :destroy] 
    def index
        @vendor_sweets = VendorSweet.all
    end
    #Once the `VendorSweet` is created, we'd like to go to the selected vendor's show page.
    def show
    
    end

    def new
        @vendor_sweet = VendorSweet.new
    end
    
    def create
        @vendor_sweet = VendorSweet.new(vendor_sweet_params)
        if @vendor_sweet.valid?
            #Once the `VendorSweet` is created, we'd like to go to the selected vendor's show page. -->
            @vendor_sweet.save
            redirect_to vendor_path(@vendor_sweet.vendor)
        else 
            flash[:errors] = @vendor_sweet.errors.full_messages
            render :new
        end
    end

    def edit 
    end

    def update
       @vendor_sweet = VendorSweet.update(vendor_sweet_params)
        if @vendor_sweet.valid?
            #Once the `VendorSweet` is created, we'd like to go to the selected vendor's show page. -->
            @vendor_sweet.save
            redirect_to vendor_path(@vendor_sweet.vendor)
        else 
            flash[:errors] = @vendor_sweet.errors.full_messages
            render :edit
        end
    end

    def destroy
        @vendor_sweet.destroy
        redirect_to vendor_sweets_path
    end

    private

    def find_vendor_sweet 
        @vendor_sweet = VendorSweet.find(params[:id])
    end

    def vendor_sweet_params
        params.require(:vendor_sweet).permit(:sweet_id, :vendor_id, :price)
    end
end
