class VendorSweet < ApplicationRecord
    validates :price, presence: true
    validates :price, only_integer: true



    belongs_to :sweet
    belongs_to :vendor
end
