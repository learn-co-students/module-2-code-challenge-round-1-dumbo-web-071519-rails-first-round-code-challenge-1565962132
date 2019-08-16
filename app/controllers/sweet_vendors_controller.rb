class SweetVendorsController < ApplicationController

    before_action :find_sweet_vendor, only: [:show, :edit, :update, :destroy]

    def index
        @sweets = Sweet.all
        @vendors = Vendor.all
        @sweet_vendors = SweetVendor.all
    end

    def show
    end

    def new
        @sweets = Sweet.all
        @vendors = Vendor.all
        @sweet_vendor = SweetVendor.new
    end

    def create
        @sweets = Sweet.all
        @vendors = Vendor.all
        @sweet_vendor = SweetVendor.create(sweet_vend_params)         
        if @sweet_vendor.valid?            
            redirect_to @sweet_vendor.vendor       
        else             
             @errors = @sweet_vendor.errors
             redirect_to new_sweet_vendor_path       
        end  
    end
    
    def edit
    end

    def update
        @sweets = Sweet.all
        @vendors = Vendor.all
        @sweet_vendor = SweetVendor.update(sweet_vend_params)
        redirect_to vendor_path
    end


    def destroy
    end

    def non_zero
        if self.price < 0
            self.errors.add(:field_name, "Field can't be negative")
        end
    end

    private

    def sweet_vend_params
        params.require(:sweet_vendor).permit(:price, :vendor_id, :sweet_id, :name)
    end

    def find_sweet_vendor
        @sweets = Sweet.all
        @vendors = Vendor.all
        @sweet_vendor = SweetVendor.find(params[:id])
    end
    
    
end
