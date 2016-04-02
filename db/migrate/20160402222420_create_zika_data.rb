class CreateZikaData < ActiveRecord::Migration
  def change
    create_table :zika_data do |t|
      t.string :report_date
      t.string :datetime
      t.integer :location_id
      t.integer :data_field_id
      t.string :time_period
      t.string :time_period_type
      t.integer :value

      t.timestamps null: false
    end
  end
end
