class Sweet < ApplicationRecord
    has_many :vendor_sweets
    has_many :vendor, through: :vendor_sweets


end
