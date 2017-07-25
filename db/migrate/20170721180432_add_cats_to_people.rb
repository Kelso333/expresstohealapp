class AddCatsToPeople < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :cats, :integer
  end
end
