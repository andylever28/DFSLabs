class TournamentsController < ApplicationController
require 'csv'
def new 
	@tournament = Tournament.new
end 

def create 
	tournament = Tournament.create(name: params["tournament"]["name"])
		CSV.foreach(params["tournamentCSV"].path, :headers => true) do |row|
			if Player.find_by(name: row[1]) 
				player = Player.find_by(name: row[1])
				player.dfs_stat.update(draft_kings_salary: row[2])
				tournament.players << player
			else 
				player = Player.create(name: row[1], dfs_stat_attributes: {dfs_rating: 0, draft_kings_salary: 0}, rank_stat_attributes: {pga_rank: 0, events_played: 0 ,avg_score_last_year: 0, top_ten: 0, vegas_odds: 0, missed_cut: 0}, stroke_stat_attributes: {putts_per_round: 0, drive_distance: 0, drive_accuracy: 0, scramble_percentage: 0, gir: 0})
				player.dfs_stat.update(draft_kings_salary: row[2])
				tournament.players << player
			end
			end 
	end 	
end
