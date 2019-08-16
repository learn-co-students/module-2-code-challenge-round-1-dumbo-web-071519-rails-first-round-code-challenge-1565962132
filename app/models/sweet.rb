class Sweet < ApplicationRecord

    #Validations go here

    has_many :vendor_sweets
    has_many :vendors, through: :vendor_sweets

    
end
