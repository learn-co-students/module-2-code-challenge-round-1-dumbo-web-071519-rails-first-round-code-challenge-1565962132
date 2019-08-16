class VendorSweetsController < ApplicationController
    before_action :find_vs only [:show, :edit, :update, :destroy]

    def index 
        @vendor_sweets = VendorSweet.all
    end

    def show

    end

    def new
       @vendor_sweet = VendorSweet.new
    end

    def create 
        @vendor_sweet = VendorSweet.create(vs_params)
        if @vendor_sweet.valid?
        redirect_to vendor_path(vendor)
        else
            flash[:errors] = vendor_sweetrails.errors.full_message
            redirect_to new_vendor_sweetrails_path
    end

    def edit

    end

    def update
        vendor_sweetrails.update(vs_params)
        redirect_to dog_path(@dog)
    end

    def destroy
        @vendor_sweetrails.destroy
        redirect_to @vendor_sweet
    end

    private

    def vs_params
        params.require(:vendor_sweetrailss).permit(:price, :sweet_id, :vendor_id)

    def find_vs
        @vendor_sweetrails = vendor_sweetrails.find(params[:id])
    end
end
