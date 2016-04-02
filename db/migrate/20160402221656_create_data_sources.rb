class CreateDataSources < ActiveRecord::Migration
  def change
    create_table :data_sources do |t|
      t.string :source_name
      t.string :source_description
      t.string :source_publisher

      t.timestamps null: false
    end
  end
end
