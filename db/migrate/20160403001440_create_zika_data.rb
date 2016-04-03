class CreateZikaData < ActiveRecord::Migration
  def change
    create_table :zika_data do |t|

      t.timestamps null: false
    end
  end
end
