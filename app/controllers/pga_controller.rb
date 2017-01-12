class PgaController < ApplicationController

  def home
  end

  def update
  		Player.api_call
  end 
end
