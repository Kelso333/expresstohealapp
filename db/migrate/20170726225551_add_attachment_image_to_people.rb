class AddAttachmentImageToPeople < ActiveRecord::Migration[5.1]
  def change
    change_table :people do |t|
      t.attachment :image
    end
  end
end
