class CreateDataItems < ActiveRecord::Migration[7.1]
  def change
    create_table :data_items do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
