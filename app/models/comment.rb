class Comment < ApplicationRecord
  belongs_to :person
  belongs_to :obstacle
  
end
