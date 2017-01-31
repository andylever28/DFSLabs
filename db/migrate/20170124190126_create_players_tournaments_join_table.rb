class CreatePlayersTournamentsJoinTable < ActiveRecord::Migration[5.0]
  def self.up
  	create_join_table :players, :tournaments
  end

  def self.down 
  	drop_join_table :players, :tournaments 
  end 
end
