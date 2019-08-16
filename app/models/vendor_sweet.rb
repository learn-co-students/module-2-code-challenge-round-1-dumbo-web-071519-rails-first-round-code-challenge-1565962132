class VendorSweet < ApplicationRecord
  belongs_to :sweet
  belongs_to :vendor
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validate :is_a_unique_relationship
#   3. Let's add some validations. `VendorSweets` should *not* be able to be saved if:
#   a) the price is blank
#   b) the price is a negative number
#   c) the price is a number that isn't an integer (like 99.5) 
# We should still go to the selected vendor's show page _if the `VendorSweet` is valid_, but if the `VendorSweet` is *not* valid, we should see the form, with the values the user entered. On that page, we should also list of validation messages about what went wrong. To help you test the validations, think about some prices your users could input that _would_ and _wouldn't_ be valid. Try them out.
  def is_a_unique_relationship
  # Create a validation that prevents a `VendorSweet` from being saved if one already exists for that `Vendor` and #`Sweet`. Make sure the message shown to your users makes enough sense for them to fix the error.
    if VendorSweet.find_by(vendor_id: self.vendor_id, sweet_id: self.sweet_id)
       errors.add(:vendor, "cannot already sell")
    end
  end

end
