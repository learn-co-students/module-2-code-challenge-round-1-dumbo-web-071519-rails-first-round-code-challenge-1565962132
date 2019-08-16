# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Vendor.destroy_all
Sweet.destroy_all
VendorSweet.destroy_all 

# vendors = ["Insomnia Cookies", "Cookies Cream","Carvel","Gregory's Coffee","Duane Park Patisserie","Tribeca Treats"]
# sweets = ["Chocolate Chip Cookie", "Chocolate Chunk Cookie","M&Ms Cookie","White Chocolate Cookie","Brownie","Peanut Butter Icecream Cake", ]

# vendors.each do |vendor|
#   Vendor.create(name: vendor)
# end

# sweets.each do |sweet|
#   Sweet.create(name: sweet)
# end

v1 = Vendor.create(name: "Insomnia Cookies")
v2 = Vendor.create(name: "Cookies Cream")
v3 = Vendor.create(name: "Carvel")
v4 = Vendor.create(name: "Coffee")
v5 = Vendor.create(name: "Duane Park Patisserie")
v6 = Vendor.create(name: "Tribeca Treats")

s1 = Sweet.create(name: "Chocolate Chip Cookie")
s2 = Sweet.create(name: "Chocolate Chunk Cookie")
s3 = Sweet.create(name: "M&Ms Cookie")
s4 = Sweet.create(name: "White Chocolate Cookie")
s5 = Sweet.create(name: "Chocolate Chip Cookie")
s6 = Sweet.create(name: "Brownie")
s7 = Sweet.create(name: "Peanut Butter Icecream Cake")

VendorSweet.create(price: 5, sweet_id: s1.id, vendor_id: v1.id)
VendorSweet.create(price: 3, sweet_id: s2.id, vendor_id: v3.id)
VendorSweet.create(price: 7, sweet_id: s2.id, vendor_id: v4.id)
VendorSweet.create(price: 6, sweet_id: s3.id, vendor_id: v1.id)
VendorSweet.create(price: 9, sweet_id: s5.id, vendor_id: v6.id)
VendorSweet.create(price: 2, sweet_id: s6.id, vendor_id: v2.id)