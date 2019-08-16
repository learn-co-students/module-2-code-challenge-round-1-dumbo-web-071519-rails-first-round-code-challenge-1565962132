class VendorSweet < ApplicationRecord

  belongs_to :vendor
  belongs_to :sweet

  validates :price, presence: true, numericality: {greater_than: -1,  only_integer: true}
  validates :vendor_id, uniqueness: {scope: :sweet_id, message: "already sells this sweet"}

end
