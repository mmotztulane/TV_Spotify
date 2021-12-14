class Follow < ApplicationRecord
    #user giving the follow
    #belongs_to:follower, foreign_key: :follower_id, class_name:"User"
    
    #The user being followed
    #belongs_to:followed_user, foreign_key::followed_user_id, class_name: "User"
    
    #Currently not allowing me to push to heroku, so commented out
end
