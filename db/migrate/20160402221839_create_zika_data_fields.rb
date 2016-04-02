class CreateZikaDataFields < ActiveRecord::Migration
  def change
    create_table :zika_data_fields do |t|
      t.string :data_field_code, null: false
      t.string :data_field_name
      t.string :data_field_description
      t.string :data_field_unit

      t.timestamps null: false
    end
  end
end
