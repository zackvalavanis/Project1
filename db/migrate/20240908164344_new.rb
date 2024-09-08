class New < ActiveRecord::Migration[7.1]
  def change
    rename_column :data_items, :name, :country_name
  end
end
