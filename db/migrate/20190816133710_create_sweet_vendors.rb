class CreateSweetVendors < ActiveRecord::Migration[5.1]
  def change
    create_table :sweet_vendors do |t|
      t.integer :price
      t.string :name
      t.belongs_to :vendor, foreign_key: true
      t.belongs_to :sweet, foreign_key: true

      t.timestamps
    end
  end
end
