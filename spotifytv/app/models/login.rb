class Login < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    
    has_many :logins
    has_many :movies, :through => :logins

    has_one_attached :avatar
    
    def avatar_thumbnail
        avatar
    end

    
    def self.id_to_name id
        login = Login.where(id: id)
        if login.length() == 0
          return "Deleted User"
        end
        return login[0].email # replace when first/last names are added
      end
    
   def self.id_to_avatar id
        login = Login.where(id: id)
        if login.length() == 0
          return "No Picture"
        end
        return login[0].avatar # replace when first/last names are added
      end
end
