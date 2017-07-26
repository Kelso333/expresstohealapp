class Obstacle < ApplicationRecord
    belongs_to :person
    has_many :comments

    has_attached_file :image, styles: { medium: "500x500>", thumb: "250x250>" }, presence: true
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
