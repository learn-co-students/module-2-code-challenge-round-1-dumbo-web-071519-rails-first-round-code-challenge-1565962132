class Vendor < ApplicationRecord

    validates :name, uniqueness: true 
    
    has_many :vendor_sweets
    has_many :sweets, through: :vendor_sweets

end
