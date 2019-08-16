class SweetsController < ApplicationController
  
  before_action :find_sweet, only: [:show, :edit]
    
   def index
    @sweets = Sweet.all
    end

    def show
       
    end
    
    def new
        @sweet=Sweet.new
    end

    def create
        @sweet = Sweet.create(params_sweet)
    end

    def edit
    end

    def update
        @sweet.update(params_vendor_sweet)
    end

    

    private

    def find_sweet
        @sweet=Sweet.find(params[:id])
    end

    def params_sweet
        params.require(:sweet).permit(:name)
    end

end
