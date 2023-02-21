# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "Deleting flats..."
Flat.destroy_all

puts 'Creating flats...'

10.times do 
  Flat.create!(
    name: Faker::TvShows::RuPaul.queen,
    address: Faker::Address.full_address,
    description: Faker::Markdown.emphasis,
    price_per_night: [35, 45, 60, 75, 40, 80].sample,
    number_of_guests: [1, 2, 3, 4, 5].sample
)
end


