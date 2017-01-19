class PgaController < ApplicationController

	def home
	end

  def index
		@players = Player.includes(:rank_stat).order('name')
	end

  def update
  		Player.api_call
  end 

  def salary
  	Player.salary_update
  end 
end
