class CreateZikaInfos < ActiveRecord::Migration
  def change
    create_table :zika_infos do |t|
      t.string :report_date
      t.string :datetime
      t.integer :location_id
      t.integer :data_field_id
      t.string :time_period
      t.string :time_period_type
      t.11 :value

      t.timestamps null: false
    end
  end
end
