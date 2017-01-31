class PgaController < ApplicationController

	def home
	end

  def index
		@players = Player.includes(:rank_stat).order('name')
	end

  def update
  		Player.api_call
  end 

  def tournament
    @counter = 1
    @tournament = Tournament.last 
  end 

  def lineup_generator
    @players = Tournament.find_by(name: "US Open").players
    @lineup = PgaLineup.new(salary_cap: 50000)
  end 
end
