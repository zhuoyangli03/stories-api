# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Creating 30 fake stories...'
30.times do
  story = Story.new(
    name: "#{Faker::TvShows::GameOfThrones.character}",
    text: "#{Faker::TvShows::GameOfThrones.quote}"
  )
  story.save!
end
puts 'Finished!'
