class VendorSweetsController < ApplicationController


    def new
        @vendor_sweet = VendorSweet.new
    end

    def create
        @vendor_sweet = VendorSweet.create(vendor_sweet_params)
        if @vendor_sweet.valid?
            @vendor_sweet.save
            redirect_to vendor_path(@vendor_sweet.vendor)
        else  
            flash[:errors] = @vendor_sweet.errors.full_messages
            redirect_to new_vendor_sweet_path(@vendor_sweet)
        end
    end

    def edit
        @vendor_sweet = VendorSweet.find(params[:id])
    end

    def update 
        @vendor_sweet = VendorSweet.find(params[:id])
        if @vendor_sweet.update(vendor_sweet_params)
            redirect_to vendor_sweet_path
        else  
            flash[:errors] = @vendor_sweet.errors.full_messages
            redirect_to edit_vendor_sweet_path(@vendor_sweet)
        end
    end

    def destroy
        @vendor_sweet = VendorSweet.find(params)
        @vendor_sweet.destroy
        redirect_to vendors_path(@vendor_sweet.vendor)
    end

    private

    def vendor_sweet_params
        params.require(:vendor_sweet).permit(:price, :sweet_id, :vendor_id)
    end


























end
