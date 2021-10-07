# Milestone 0
# group member: Owen Butler, Max Motz, Yuxuan Zhang
# Project: TV Spotify
# For Github Pushes:
# Repository: https://github.com/mmotztulane/TV_Spotify

Class Account

  def initialize(user_name, password, birthdate)
    @name = user_name
    @password = password
    @birthdate = birthdate
    @followers = []         #list of users' followers
    @following = []         #list of users' following
  end

  def setName(name)
    @name = name
  end

  def setPassword(password)
    @password = password
  end

  def setBirthDate(birthdate)
    @birthday = birthDate
  end

  def follow(following_name)
    @following << following_name
  end

  def getNumOfFollowing()
    return @following.length
  end

  def followBy(name)
    @followers << name
  end

  def getNumOfFollowers()
    return @followers.length
  end

  def like(movie)
    movie.likeBy(@name)
  end

  def dislike(movie)
    movie.dislikeBy(@name)
  end

  def comment(movie,text)
    movie.commentBy(text)
  end

end

Class Movies

  def initialize()
    @like_list = []     #list of users who like it
    @dislike_list = []  #list of users who dislike it 
    @comments = []      #list comment written by user
  end

  def likeBy(name)      
    @like_list << name
  end

  def dislikeBy(name)
    @dislike_list << name
  end

  def commentBy(text)
    @comments << text
  end

  def getNumOfLike()
    return @like_list.length
  end

  def getNumOfDislike()
    return @dislike_list.length
  end

end

list_of_user = []
list_of_movie = []