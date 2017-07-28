class Person < ApplicationRecord
  has_many :obstacles
  has_many :comments
    
  has_secure_password
    
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, if: :password_changed
  validates :email, presence: true, uniqueness: true

  has_attached_file :image, styles: { medium: "500x500>", thumb: "250x250>" }, presence: true
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  def password_changed
    !self.password.nil?
  end
  
end
