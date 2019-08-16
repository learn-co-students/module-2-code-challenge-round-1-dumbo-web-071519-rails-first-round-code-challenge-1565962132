class Vendorsweet < ApplicationRecord
  belongs_to :sweet
  belongs_to :vendor

  validates :price, presence: true, numericality: { greater_than: 0, only_integer: true}

end
