# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

User.create(username: 'farneysucks', drink_count: 1, high_score: 4000, game_count: 7)
User.create(username: 'anthonydoestoo', drink_count: 2, high_score: 50000, game_count: 8)
User.create(username: 'johnscooltho', drink_count: 3, high_score: 150000, game_count: 9)
