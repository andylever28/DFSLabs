class AddColumnToRankStat < ActiveRecord::Migration[5.0]
  def self.up 
    add_column :rank_stats, :events_played, :integer
  end

  def self.down
  	remove_column :rank_stats, :events_played, :integer
 	end
end
