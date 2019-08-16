# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Vendor.destroy_all
Sweet.destroy_all

#VenderSweet.destroy_all

###this was the VendorSweet.all array that existed at the end of this code challenge. Feel free to use as seed data if you want. I didn't use seed data :[
# <VendorSweet id: 3, sweet_id: 1, vendor_id: 1, price: 1, created_at: "2019-08-16 14:28:27", updated_at: "2019-08-16 14:28:27">, #<VendorSweet id: 4, sweet_id: 2, vendor_id: 2, price: 200, created_at: "2019-08-16 14:40:52", updated_at: "2019-08-16 14:40:52">, #<VendorSweet id: 5, sweet_id: 5, vendor_id: 4, price: 350, created_at: "2019-08-16 14:43:09", updated_at: "2019-08-16 14:43:09">, #<VendorSweet id: 6, sweet_id: 5, vendor_id: 6, price: 350, created_at: "2019-08-16 14:44:49", updated_at: "2019-08-16 14:44:49">, #<VendorSweet id: 7, sweet_id: 6, vendor_id: 6, price: 2, created_at: "2019-08-16 14:46:01", updated_at: "2019-08-16 14:46:01">, #<VendorSweet id: 8, sweet_id: 4, vendor_id: 1, price: 200, created_at: "2019-08-16 15:04:05", updated_at: "2019-08-16 15:04:05">]> 


vendors = ["Insomnia Cookies", "Cookies Cream","Carvel","Gregory's Coffee","Duane Park Patisserie","Tribeca Treats"]
sweets = ["Chocolate Chip Cookie", "Chocolate Chunk Cookie","M&Ms Cookie","White Chocolate Cookie","Brownie","Peanut Butter Icecream Cake", ]

vendors.each do |vendor|
  Vendor.create(name: vendor)
end

sweets.each do |sweet|
  Sweet.create(name: sweet)
end

