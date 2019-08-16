class VendorSweet < ApplicationRecord
    #Validations:
    validates :price, presence: true
    validates :price, numericality: { only_integer: true }  
    validates :price, numericality: { greater_than: 0 }  
    
    belongs_to :vendor
    belongs_to :sweet
end
