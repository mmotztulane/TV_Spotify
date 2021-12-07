class Account < ActiveRecord::Base
  validates :name, format: { with: /\A[a-z\d]*\Z/i,
    message: "Only allows capital/lowercase letters and numbers." }, length: { in: 3..20 }
   validates :password, format: { with: /\A[\w .,!?$&*@]+\Z/i,
    message: "Only allows letters, numbers, commas, spaces, and end of sentence punctuation." }, length: { in: 4..20 }

        # Will return an array of follows for the given user instance
  has_many :received_follows, foreign_key: :followed_user_id, class_name: "Follow"

  # Will return an array of users who follow the user instance
  has_many :followers, through: :received_follows, source: :follower
    
  # returns an array of follows a user gave to someone else
  has_many :given_follows, foreign_key: :follower_id, class_name: "Follow"
  
  # returns an array of other users who the user has followed
  has_many :followings, through: :given_follows, source: :followed_user
  # returns an array of other users who the user has followed
  has_many :followings, through: :given_follows, source: :followed_user
  
    # Follows a user.
  def follow(other_user)
    active_relationships.create(followed_id: other_user.id)
  end

  # Unfollows a user.
  def unfollow(other_user)
    active_relationships.find_by(followed_id: other_user.id).destroy
  end

  # Returns true if the current user is following the other user.
  def following?(other_user)
    following.include?(other_user)
  end
end
