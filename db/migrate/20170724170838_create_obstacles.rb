class CreateObstacles < ActiveRecord::Migration[5.1]
  def change
    create_table :obstacles do |t|
      t.text :obstacle_content
      t.attachment :image

      t.timestamps
    end
  end
end
