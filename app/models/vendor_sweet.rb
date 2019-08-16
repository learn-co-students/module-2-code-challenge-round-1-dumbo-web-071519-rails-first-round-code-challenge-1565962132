class VendorSweet < ApplicationRecord

  validates :price, presence: true, numericality: { greater_than: 0, less_than: 100 }

  belongs_to :sweet
  belongs_to :vendor
end
