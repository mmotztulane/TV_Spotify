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
    :comment => 'No comment'},
    
    {:username => 'Sashon', :reaction => 'Like',
    :comment => 'I had a good time'},
    
  {:username => 'Bashon', :reaction => 'Like',
    :comment => 'Dope!'},
    
  {:username => 'lack', :reaction => 'Dislike',
    :comment => 'No.'},
    
    {:username => 'lack', :reaction => 'Like',
    :comment => 'Good movie for Kids!'},
    
  {:username => 'tack', :reaction => 'Like',
    :comment => 'Cool!'},
    
  {:username => 'pack', :reaction => 'Dislike',
    :comment => 'No comment'},
    
  {:username => 'pack2', :reaction => 'Dislike',
    :comment => 'Nada'},
    
  {:username => 'knack', :reaction => 'Dislike',
    :comment => 'Meh...'},
    
  {:username => 'jack', :reaction => 'Like',
    :comment => 'Alright!'},
    
  {:username => 'hack', :reaction => 'Dislike',
    :comment => 'Boo'},
    
  {:username => 'sauron', :reaction => 'Like',
    :comment => 'Fun!'},
    
  {:username => 'morepeople', :reaction => 'Like',
    :comment => 'Great movie!'}
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
    :release_date => '10/04/2019'}
 ]
    
  <<-DOC
    
  {:movie => 'Dune', :likes => "0", :dislikes => "0", :comments => "0", :genre => "Sci-Fi", :age_rating => "PG-13", 
    :release_date => '10/22/2021'},
    
    {:movie => 'Inception', :likes => "100", :dislikes => "1", :comments => "3", :genre => "Drama, Heist", :age_rating => "PG-13", 
    :release_date => '06/13/2010'},
    
  {:movie => 'Dodgeball', :likes => "7", :dislikes => "10", :comments => "10", :genre => "Comedy", :age_rating => "PG-13", 
    :release_date => '06/18/2004'},
    
  {:movie => 'Shrek 2', :likes => "99999", :dislikes => "0", :comments => "21", :genre => "Comedy, Fantasy, Animated", :age_rating => "G", 
    :release_date => '11/04/2021'},
    
  {:movie => 'Shrek the Third', :likes => "0", :dislikes => "96", :comments => "0", :genre => "Comedy, Fantasy, Animated", :age_rating => "G", 
    :release_date => '5/18/2007'},
    
    {:movie => 'Happy Feet 2', :likes => "0", :dislikes => "1000000", :comments => "999", :genre => "Animated", :age_rating => "G", 
    :release_date => '11/18/2011'},
    
  {:movie => 'Happy Feet', :likes => "1", :dislikes => "500", :comments => "100", :genre => "Animated", :age_rating => "G", 
    :release_date => '11/17/2006'},
    
  {:movie => 'Armagedon', :likes => "5", :dislikes => "3", :comments => "16", :genre => "Thriller, Drama", :age_rating => "R", 
    :release_date => '10/04/2019'},
    
  {:movie => 'Bolt', :likes => "0", :dislikes => "96", :comments => "0", :genre => "Animated", :age_rating => "G", 
    :release_date => '5/18/2007'},
    {:movie => 'The Nightmare Before Christmas', :likes => "2", :dislikes => "1", :comments => "3", :genre => "Festive, Drama", :age_rating => "G", 
    :release_date => '04/22/2001'},
    
  {:movie => 'Shark Tale', :likes => "1", :dislikes => "1", :comments => "10", :genre => "Animated", :age_rating => "G", 
    :release_date => '11/02/2007'},
    
  {:movie => 'Jaws', :likes => "5", :dislikes => "3", :comments => "16", :genre => "Thriller", :age_rating => "R", 
    :release_date => '10/04/2019'},
  {:movie => 'Billy Madison', :likes => "0", :dislikes => "96", :comments => "0", :genre => "Comedy", :age_rating => "PG-13", 
    :release_date => '5/18/2007'},
    {:movie => 'Happy Gilmore', :likes => "2", :dislikes => "1", :comments => "3", :genre => "Comedy", :age_rating => "PG-13", 
    :release_date => '04/22/2001'},
    
  {:movie => 'Madagascar', :likes => "1", :dislikes => "1", :comments => "10", :genre => "Animated", :age_rating => "G", 
    :release_date => '11/02/2007'},
    
  {:movie => 'Madagascar 2', :likes => "5", :dislikes => "3", :comments => "16", :genre => "Animated", :age_rating => "G", 
    :release_date => '10/04/2019'},
    
  {:movie => 'Madagascar 3', :likes => "0", :dislikes => "96", :comments => "0", :genre => "Animated", :age_rating => "G", 
    :release_date => '5/18/2007'}
    DOC




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