class CreateLineupsPlayersJoinTable < ActiveRecord::Migration[5.0]
  def self.up
  	create_join_table :players, :pga_lineups
  end

  def self.down 
  	drop_join_table :players, :pga_lineups 
  end 
end
