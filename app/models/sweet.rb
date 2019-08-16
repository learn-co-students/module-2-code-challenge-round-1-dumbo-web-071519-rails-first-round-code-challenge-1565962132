class Sweet < ApplicationRecord

    validates :name, uniqueness: true 
    
    has_many :vendor_sweets 
    has_many :vendors, through: :vendor_sweets 

end
