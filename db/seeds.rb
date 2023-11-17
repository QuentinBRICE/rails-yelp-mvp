puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: 'japanese' }
pizza_east = { name: "Pizza East", address: '56A Shoreditch High St, London E1 6PQ', category: 'italian' }
moulox = { name: 'Moulox', address: "10 avenue des Champs-Elysées", category: 'french' }
roi_dla_frite = { name: 'Roi Dla Frite', address: '30 Shoreditch High St, Quimper', category: 'belgian' }
chistreet = { name: 'ChiStreet', address: '40 Boundary St, London E2 7JE', category: 'chinese' }

[dishoom, pizza_east, moulox, roi_dla_frite, chistreet].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
