class User < ActiveRecord::Base
  validates :username, format: { with: /\A[a-z\d]*\Z/i,
    message: "Only allows capital/lowercase letters and numbers." }, length: { in: 3..20 }
  validates :comment, format: { with: /\A[\w .,!?]+\Z/i,
    message: "Only allows letters, numbers, commas, spaces, and end of sentence punctuation." }, length: { in: 1..200 }
  belongs_to :login
  belongs_to :movie
  
  def get_name
    return Login.id_to_name self[:login_id]
  end
    
  def get_movie
    return self[:movie_id]
  end

end