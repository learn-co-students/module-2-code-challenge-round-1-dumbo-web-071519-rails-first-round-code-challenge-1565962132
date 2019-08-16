class SweetsController < ApplicationController
    before_action :find_sweet, only: [:show, :edit] 

    def index
      @sweets = Sweet.all
    end

    #Once the `Sweet` is created, we'd like to go to the selected vendor's show page.
    def show
      @vendors = @sweet.vendors
      @vendor_sweets = @sweet.vendor_sweets
    end

    def new
        @vendor_sweet = Sweet.new
    end
    
    def create
        @vendor_sweet = Sweet.create(sweet_params)
        redirect_to @vendor_sweet
    end
    
    private

    def find_sweet 
        @sweet = Sweet.find(params[:id])
    end

    def sweet_params
        params.require(:vendor_sweet).permit(:name)
    end
end
