class VendorSweet < ApplicationRecord
  belongs_to :sweet 
  belongs_to :vendor

  validates :price, presence: true
  # neg number, integer


end
