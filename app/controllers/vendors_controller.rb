class VendorsController < ApplicationController

  
before_action :find_vendor, only: [:show, :edit]
    
   def index
    @vendors = Vendor.all
  end

    def show
       
    end
    
    def new
        @vendor=Vendor.new
    end

    def create
        @vendor = Vendor.create(params_sweet)
    end

    def edit
    end

    def update
        @vendor.update(params_vendor)
    end

    

    private

    def find_vendor
        @vendor=Vendor.find(params[:id])
    end

    def params_vendor
        params.require(:vendor).permit(:name)
    end

end
