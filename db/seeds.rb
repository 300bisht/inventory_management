# db/seeds.rb

# Clear existing records to avoid duplication if running multiple times
InventoryItem.destroy_all

# Seed with some initial data
InventoryItem.create!(
  name: 'Laptop',
  quantity: 10,
  location: 'Office A'
)

InventoryItem.create!(
  name: 'Keyboard',
  quantity: 50,
  location: 'Office B'
)

InventoryItem.create!(
  name: 'Mouse',
  quantity: 75,
  location: 'Office C'
)

InventoryItem.create!(
  name: 'Monitor',
  quantity: 30,
  location: 'Office A'
)

InventoryItem.create!(
  name: 'Desk Chair',
  quantity: 15,
  location: 'Office B'
)

puts "Seed data created successfully."
