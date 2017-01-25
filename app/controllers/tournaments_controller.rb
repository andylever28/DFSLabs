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
				player = Player.create(name: row[1])
				player.dfs_stat.update(draft_kings_salary: row[2])
				tournament.players << player
			end
			end 
	end 	
end
