class ChangeGirTypeInStrokeStat < ActiveRecord::Migration[5.0]
  def self.up
  	change_column :stroke_stats, :gir, :real
  	change_column :stroke_stats, :drive_distance, :real
  	change_column :stroke_stats, :drive_accuracy, :real
  	change_column :stroke_stats, :scramble_percentage, :real
  	change_column :stroke_stats, :putts_per_round, :real
  	change_column :rank_stats, :missed_cut, :real
  	change_column :rank_stats, :avg_score_last_year, :real
  end

  def self.down
  	change_column :stroke_stats, :gir, :integer
  	change_column :stroke_stats, :drive_distance, :integer
  	change_column :stroke_stats, :drive_accuracy, :integer
  	change_column :stroke_stats, :putts_per_round, :integer
  	change_column :rank_stats, :missed_cut, :integer
  	change_column :rank_stats, :avg_score_last_year, :integer
   	change_column :stroke_stats, :scramble_percentage, :integer
  end

end
