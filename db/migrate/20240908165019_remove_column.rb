class RemoveColumn < ActiveRecord::Migration[7.1]
  def change
    remove_column :data_items, :description, :text
  end
end
