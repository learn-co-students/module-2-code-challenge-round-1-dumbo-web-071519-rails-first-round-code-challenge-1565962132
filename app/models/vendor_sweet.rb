class VendorSweet < ApplicationRecord
    belongs_to :vendors, dependent: :destroy
    belongs_to :sweets, dependent: :destroy


    validates :price, presence: true
    validates :price, numericality: { only_integer: true }
    validates :price, numericality: {greater_than_or_equal_to: 0}
end
