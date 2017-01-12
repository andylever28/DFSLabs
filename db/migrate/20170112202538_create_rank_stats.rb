class CreateRankStats < ActiveRecord::Migration[5.0]
  def change
    create_table :rank_stats do |t|
      t.integer :pga_rank
      t.integer :avg_score_last_30
      t.integer :avg_score_last_year
      t.integer :top_ten
      t.integer :vegas_odds
      t.integer :missed_cut
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
