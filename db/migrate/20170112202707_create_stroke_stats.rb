class CreateStrokeStats < ActiveRecord::Migration[5.0]
  def change
    create_table :stroke_stats do |t|
      t.integer :putts_per_round
      t.integer :gir
      t.integer :drive_distance
      t.integer :drive_accuracy
      t.integer :scramble_percentage
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
