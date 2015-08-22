class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.string :item
      t.boolean :done, default: false
      t.references :trip, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
