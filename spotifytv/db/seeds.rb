# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
more_users = [
  {:username => 'Max25', :reaction => 'Like',
    :comment => 'Entertaining throughout!'},
  {:username => 'SanjoBanjo', :reaction => 'Like',
    :comment => 'Very Funny'},
  {:username => 'Randy', :reaction => 'Dislike',
    :comment => 'No comment'}
]

more_users.each do |user|
  User.create!(user)
end

more_movies = [
  {:movie => 'Shrek', :likes => "2", :dislikes => "1", :comments => "3", :genre => "Comedy, Fantasy, Animated", :age_rating => "G", 
    :release_date => '04/22/2001'},
    
  {:movie => 'Bee Movie', :likes => "1", :dislikes => "1", :comments => "10", :genre => "Comedy, Animated", :age_rating => "G", 
    :release_date => '11/02/2007'},
    
  {:movie => 'Joker', :likes => "5", :dislikes => "3", :comments => "16", :genre => "Thriller, Crime Film, Drama", :age_rating => "R", 
    :release_date => '10/04/2019'},
  {:movie => 'Shrek the Third', :likes => "0", :dislikes => "96", :comments => "0", :genre => "Comedy, Fantasy, Animated", :age_rating => "G", 
    :release_date => '5/18/2007'}
]



more_movies.each do |movie|
  Movie.create!(movie)
end

more_accounts = [
    {:name => 'Abc', :password => 'abc123'},
    
    {:name => 'ManInSuit', :password => 'logmein'},
    
    {:name => 'Shrek', :password => 'dreamworks'}
]

more_accounts.each do |account|
  Account.create!(account)
end