class New2 < ActiveRecord::Migration[7.1]
  def change
    add_column :data_items, :country_code, :string 
    add_column :data_items, :year, :integer
    add_column :data_items, :value, :string
  end
end
