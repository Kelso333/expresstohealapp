class AddBananaToPeople < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :banana, :integer
  end
end
