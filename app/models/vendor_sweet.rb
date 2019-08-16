class VendorSweet < ApplicationRecord
    belongs_to :vendors
    belongs_to :sweets

    validates :price, presence: true
end
