# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
more_users = [
  {:username => 'Max25', :reaction => 'Like',
    :comment => 'Entertaining throughout'},
  {:username => 'SanjoBanjo', :reaction => 'Like',
    :comment => 'Very Funny'},
  {:username => 'Randy', :reaction => 'Dislike',
    :comment => 'No comment'},
]

more_users.each do |user|
  User.create!(user)
end