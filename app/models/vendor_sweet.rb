class VendorSweet < ApplicationRecord
  belongs_to :sweet
  belongs_to :vendor

  validates :price, presence: true, numericality: { only_integer: true, greater_than: 0 }

  validate :vendor_sweet_cant_exit_already

  def vendor_sweet_cant_exit_already
    existingvs = VendorSweet.find_by(vendor: self.vendor, sweet: self.sweet)
    if existingvs != nil
      errors.add(:vendor, "already has this sweet in their store")
    end
  end

end
