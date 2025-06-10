# db/seeds.rb

puts "Cleaning database..."
Flat.destroy_all
puts "Database cleaned!"

puts "Creating flats..."

# Appartement 1
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3,
  picture_url: 'https://picsum.photos/id/10/800/600' # Intérieur lumineux, exemple
)

# Appartement 2
Flat.create!(
  name: 'Stylish Flat in City Center',
  address: '25 Baker Street, London NW1 6XE',
  description: 'Modern flat with great views, perfect for a city break. One bedroom, open plan living, close to all amenities.',
  price_per_night: 120,
  number_of_guests: 2,
  picture_url: 'https://picsum.photos/id/11/800/600' # Paysage urbain ou intérieur moderne, exemple
)

# Appartement 3
Flat.create!(
  name: 'Cozy Studio near Eiffel Tower',
  address: '15 Rue de Rivoli, 75001 Paris',
  description: 'Small but charming studio, ideal for solo travelers or couples. Steps away from major landmarks.',
  price_per_night: 60,
  number_of_guests: 1,
  picture_url: 'https://picsum.photos/id/21/800/600' # Intérieur de studio, exemple
)

# Appartement 4
Flat.create!(
  name: 'Spacious Family House in Suburbs',
  address: '42 Oak Avenue, Manchester M20 4AB',
  description: 'Large family home with a big garden, perfect for kids. Three bedrooms, two bathrooms, quiet neighborhood.',
  price_per_night: 90,
  number_of_guests: 5,
  picture_url: 'https://picsum.photos/id/35/800/600' # Maison avec jardin, exemple
)

# Vous pouvez ajouter d'autres appartements si vous le souhaitez
Flat.create!(
  name: 'Luminous Loft in Brooklyn',
  address: '123 Main St, Brooklyn, NY 11201',
  description: 'Industrial-chic loft with high ceilings and large windows, perfect for artists and creatives.',
  price_per_night: 150,
  number_of_guests: 2,
  picture_url: 'https://picsum.photos/id/60/800/600'
)

Flat.create!(
  name: 'Charming Cottage by the Lake',
  address: 'Lakeview Road, Cumbria, CA12 4TD',
  description: 'Peaceful and rustic cottage perfect for a quiet getaway. Enjoy nature and tranquility.',
  price_per_night: 80,
  number_of_guests: 4,
  picture_url: 'https://picsum.photos/id/67/800/600'
)

puts "Flats created!"
