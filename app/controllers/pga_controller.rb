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
end
