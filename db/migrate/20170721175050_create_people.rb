class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :city
      t.string :state
      t.string :country
      t.string :title

      t.timestamps
    end
  end
end
