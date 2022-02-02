class User < ApplicationRecord
     has_secure_password 

     has_many :recipes
     has_many :ingredients, through: :recipes

     validates :username, presence: true, :uniqueness => { :case_sensitive => false}
     validates :email, presence: true, :uniqueness => { :case_sensitive => false}
     validates :firstname, presence: true
     validates :lastname, presence: true
     validates :password, length: { minimum: 8 }, if: :password_digest_changed? 

end
