class Login < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    
    has_many :logins
    has_many :movies, :through => :logins
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
  
    
    
    def self.id_to_name id
        login = Login.where(id: id)
        if login.length() == 0
          return "Anonymous"
        end
        return login[0].email # replace when first/last names are added
      end
end
