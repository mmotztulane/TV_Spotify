# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
<<-DOC
    more_users = [
  {:username => 'Max25', :reaction => 'Like',
    :comment => 'Entertaining throughout!'},
    #1
  {:username => 'SanjoBanjo', :reaction => 'Like',
    :comment => 'Very Funny'},
    #2
  {:username => 'Randy', :reaction => 'Dislike',
    :comment => 'No comment'},
    #3
    {:username => 'Sashon', :reaction => 'Like',
    :comment => 'I had a good time'},
    #4
  {:username => 'Bashon', :reaction => 'Like',
    :comment => 'Dope!'},
    #5
  {:username => 'lack', :reaction => 'Dislike',
    :comment => 'No.'},
    #6
    {:username => 'mack', :reaction => 'Like',
    :comment => 'Good movie for Kids!'},
    #7
  {:username => 'tack', :reaction => 'Like',
    :comment => 'Cool!'},
    #8
  {:username => 'pack', :reaction => 'Dislike',
    :comment => 'No comment'},
    #9
  {:username => 'pack2', :reaction => 'Dislike',
    :comment => 'Nada'},
    #10
  {:username => 'knack', :reaction => 'Dislike',
    :comment => 'Meh...'},
    #11
  {:username => 'jack', :reaction => 'Like',
    :comment => 'Alright!'},
    #12
  {:username => 'hack', :reaction => 'Dislike',
    :comment => 'Boo'},
    #13
  {:username => 'sauron', :reaction => 'Like',
    :comment => 'Fun!'},
    #14
  {:username => 'morepeople', :reaction => 'Like',
    :comment => 'Great movie!'},
    #15
  {:username => 'morepeople', :reaction => 'Dislike',
    :comment => 'Donkey'},
    #16
  {:username => 'awesomeguy', :reaction => 'Like',
    :comment => 'Fantastic, truly a timeless piece. I really enjoyed the part where Shrek and Donkey go to the castle to save Fiona. Very subversive!'},
    #17
  {:username => 'chickensalad97', :reaction => 'Dislike',
    :comment => 'Too bland'},
    #18
  {:username => 'Whoisthis', :reaction => 'Dislike',
    :comment => 'Not for me.'},
    #19
  {:username => 'bababooey2', :reaction => 'Like',
    :comment => 'Approved!'}
    #20
]

more_users.each do |user|
  User.create!(user)
end
DOC
more_movies = [
  {:movie => 'Shrek', :likes => "2", :dislikes => "1", :comments => "3", :genre => "Comedy, Fantasy, Animated", :age_rating => "G", 
    :release_date => '04/22/2001'},
    #1
  {:movie => 'Bee Movie', :likes => "1", :dislikes => "1", :comments => "10", :genre => "Comedy, Animated", :age_rating => "G", 
    :release_date => '2007-11-02'},
    #2
  {:movie => 'Joker', :likes => "5", :dislikes => "3", :comments => "16", :genre => "Thriller, Crime Film, Drama", :age_rating => "R", 
    :release_date => '2019-10-04'},
   #3
  {:movie => 'Dune', :likes => "0", :dislikes => "0", :comments => "0", :genre => "Sci Fi", :age_rating => "PG-13", 
    :release_date => '2021-10-22'},
   #4
  {:movie => 'Inception', :likes => "100", :dislikes => "1", :comments => "3", :genre => "Drama, Heist", :age_rating => "PG-13", 
    :release_date => '2010-06-13'},
   #5
  {:movie => 'Dodgeball', :likes => "7", :dislikes => "10", :comments => "10", :genre => "Comedy", :age_rating => "PG-13", 
    :release_date => '2004-06-18'},
   #6
  {:movie => 'Shrek 2', :likes => "99999", :dislikes => "0", :comments => "21", :genre => "Comedy, Fantasy, Animated", :age_rating => "G", 
    :release_date => '2021-11-04'},
    #7
  {:movie => 'Shrek the Third', :likes => "0", :dislikes => "96", :comments => "0", :genre => "Comedy, Fantasy, Animated", :age_rating => "G", 
    :release_date => '2007-5-18'},
    #8
  {:movie => 'Happy Feet 2', :likes => "0", :dislikes => "1000000", :comments => "999", :genre => "Animated", :age_rating => "G", 
    :release_date => '2011-11-18'},
    #9
  {:movie => 'Happy Feet', :likes => "1", :dislikes => "500", :comments => "100", :genre => "Animated", :age_rating => "G", 
    :release_date => '2006-11-17'},
    #10
    {:movie => 'Armagedon', :likes => "5", :dislikes => "3", :comments => "16", :genre => "Thriller, Drama", :age_rating => "R", 
    :release_date => '1998-06-30'},
    #11
  {:movie => 'Bolt', :likes => "0", :dislikes => "96", :comments => "0", :genre => "Animated", :age_rating => "G", 
    :release_date => '2007-05-18'},
    #12
  {:movie => 'Jaws', :likes => "5", :dislikes => "3", :comments => "16", :genre => "Thriller", :age_rating => "R", 
    :release_date => '1975-06-20'},
   #13
  {:movie => 'Billy Madison', :likes => "0", :dislikes => "96", :comments => "0", :genre => "Comedy", :age_rating => "PG-13", 
    :release_date => '1995-02-10'},
   #14
  {:movie => 'Happy Gilmore', :likes => "2", :dislikes => "1", :comments => "3", :genre => "Comedy", :age_rating => "PG-13", 
    :release_date => '1996-02-16'},
   #15
  {:movie => 'Madagascar', :likes => "1", :dislikes => "1", :comments => "10", :genre => "Animated", :age_rating => "PG", 
    :release_date => '2005-05-27'},
   #16
  {:movie => 'Madagascar: Escape 2 Africa', :likes => "5", :dislikes => "3", :comments => "16", :genre => "Animated", :age_rating => "PG", 
    :release_date => '2008-11-07'},
    #17
  {:movie => "Madagascar 3: Europes most wanted", :likes => "0", :dislikes => "96", :comments => "0", :genre => "Animated", :age_rating => "PG", 
    :release_date => '2012-6-08'},
    #18
  {:movie => 'Shark Tale', :likes => "1", :dislikes => "13", :comments => "1", :genre => "Animated", :age_rating => "PG", 
    :release_date => '2004-10-01'},
    #19
  {:movie => 'The Nightmare Before Christmas', :likes => "20", :dislikes => "3", :comments => "7", :genre => "Holiday, Artsy", :age_rating => "PG", 
    :release_date => '1993-10-13'}
    #20
    
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

<<-DOC

more_accounts = [
    {:name => 'Abc', :password => 'abc123'},
    
    {:name => 'ManInSuit', :password => 'logmein'},
    
    {:name => 'Shrek', :password => 'dreamworks'},
    
    {:name => 'Max25', :password => 'AwesomeGuy97'},
    
    {:name => 'Billy', :password => '$Bob$'},
    
    {:name => 'Dadarudo', :password => 'istheman88'},
    
    {:name => 'iamme', :password => 'yesiam'},
    
    {:name => 'HEHE', :password => '!?!What?'},
    
    {:name => 'livinglikelarry3', :password => 'surfsup'},
    
    {:name => 'YourGrandma21', :password => 'Cookies$'},
    
    {:name => 'NaeNaeBoi', :password => 'DabitupYESSIR'},
    
    {:name => 'Fiona', :password => '81Onions&'},
    
    {:name => 'HulaHooper', :password => '*Iliketohavefun*'},
    
    {:name => 'RollWaver', :password => 'LetsGoGreenWave!'},
    
    {:name => 'JustJamie', :password => 'WhoisJamie???'},
    
    {:name => 'RadicalLobster', :password => 'Sk8itup!'},
    
    {:name => 'Yuhu', :password => '12345chocolateMil'},
    
    {:name => 'KnockKnock', :password => 'Who1sthere?'},
    
    {:name => 'MitochondriaLover', :password => 'Bill!Nye!Science!'},
    
    {:name => 'PoppyHoppy', :password => 'PopcornismyJam212'}
 
]

more_accounts.each do |account|
  Account.create!(account)
end

DOC