class AddColumns < ActiveRecord::Migration[7.1]
  def change
    rename_column :data_items, :title, :name 
  end
end
