class VendorSweet < ApplicationRecord
  belongs_to :vendor
  belongs_to :sweet
  validate :check_relationship
  validates :price, presence: true, numericality: {only_integer: true, greater_than: 0}
  

  def check_relationship
    if self.vendor.sweets.include?(self.sweet)
      self.errors.add(:vendor, "already sells this sweet!")
      return false
    end
  end


end
