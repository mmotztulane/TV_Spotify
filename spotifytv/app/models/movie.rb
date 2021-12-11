class Movie < ActiveRecord::Base
  validates :movie, format: { with: /\A[a-z\d ,:-]*\Z/i,
    message: "Only allows capital/lowercase letters, numbers, spaces, commas, colons, and dashes." }, length: { in: 1..50 }
  validates :genre, format: { with: /\A[a-z ,]*\Z/i,
    message: "Only allows letters and spaces." }, length: { in: 1..40 }
  validates :release_date, length: { minimum: 5 }
  has_many :users, dependent: :delete_all
  has_one_attached :image
    
  paginates_per 6
    
  def comment_count
     return self.users.where.not(:comment => "No Comment").count
  end
  
  def like_count
     return self.users.where(:reaction => "Like").count
  end
    
  def dislike_count
     return self.users.where(:reaction => "Dislike").count
  end
    
  def get_name
      self.movie
  end
  
  def get_photo
      name = self.movie + ".jpg"
      if File.file?("#{Rails.root}/app/assets/images/#{name}")
          return name
      else
          return "noimage.png"
      end
  end
 
end