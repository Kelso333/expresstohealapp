class Person < ApplicationRecord
    has_many :obstacles
    has_many :comments
    
    has_secure_password
    
    validates :username, presence: true, uniqueness: true
    validates :password, presence: true
    validates :email, presence: true, uniqueness: true

end
