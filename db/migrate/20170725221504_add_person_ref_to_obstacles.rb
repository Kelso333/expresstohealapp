class AddPersonRefToObstacles < ActiveRecord::Migration[5.1]
  def change
    add_reference :obstacles, :person, foreign_key: true
  end
end
