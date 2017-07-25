class RemoveCatsFromPeople < ActiveRecord::Migration[5.1]
  def change
    remove_column :people, :cats, :integer
  end
end
