class RemoveBananaFromPeople < ActiveRecord::Migration[5.1]
  def change
    remove_column :people, :banana, :integer
  end
end
