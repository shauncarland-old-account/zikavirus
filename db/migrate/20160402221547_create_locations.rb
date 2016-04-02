class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :location_name
      t.string :location_type
      t.string :country
      t.string :state_province
      t.string :district_county_municipality
      t.string :city
      t.string :alt_name1
      t.string :alt_name2

      t.timestamps null: false
    end
  end
end
