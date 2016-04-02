class CreateZikas < ActiveRecord::Migration
  def change
    create_table :zikas do |t|

      t.timestamps null: false
    end
  end
end
