class Movie < ActiveRecord::Base
  validates :movie, format: { with: /\A[a-z\d ,:-]*\Z/i,
    message: "Only allows capital/lowercase letters, numbers, spaces, commas, colons, and dashes." }, length: { in: 1..50 }
  validates :genre, format: { with: /\A[a-z ,]*\Z/i,
    message: "Only allows letters and spaces." }, length: { in: 1..40 }
  validates :release_date, length: { in: 10..10 }
  has_many :users, dependent: :delete_all
    
  def comment_count
     return self.users.where.not(:comment => "No Comment").count
  end
  
  def like_count
     return self.users.where(:reaction => "Like").count
  end
    
  def dislike_count
     return self.users.where(:reaction => "Dislike").count
  end
    
  
    
     def self.id_to_name id
        movie = Movie.where(id: id)
        if movie.length() == 0
          return "Movie"
        end
        return movie[0].movie # replace when first/last names are added
      end
end