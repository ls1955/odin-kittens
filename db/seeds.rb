# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

names = %w[Luna Simba Mittens Tigger Cleo Bella Ginger Oliver Misty]
cutenesses = ["very cute", "cute"]
softnesses = ["very soft", "soft", "medium", "hard"]

names.each do |name|
  Kitten.create(name:,
                age: rand(1..5),
                cuteness: cutenesses.sample,
                softness: softnesses.sample)
end
