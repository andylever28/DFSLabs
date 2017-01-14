class Player < ApplicationRecord
	has_one :dfs_stat
	has_one :rank_stat
	has_one :stroke_stat
	accepts_nested_attributes_for :dfs_stat, :rank_stat, :stroke_stat


	def self.api_call

		url = "http://api.sportradar.us/golf-t2/seasontd/pga/2017/players/statistics.json?api_key=7pfymf3haentv7t2u2rj7bsj"

		response = HTTParty.get url
		reponse = JSON.parse(response.body)

		response["players"].each do |player|
			stat = player["statistics"]
			missed_cut = ((stat["cuts"].to_f/stat["events_played"].to_i)*100).round(4) if stat["events_played"] != 0 	
			play = Player.where(name: "#{player["first_name"]} " + "#{player["last_name"]}").first_or_initialize(name: "#{player["first_name"]} " + "#{player["last_name"]}", dfs_stat_attributes: {dfs_rating: 0, draft_kings_salary: 0}, rank_stat_attributes: {pga_rank: stat["world_rank"].to_i, avg_score_last_year: stat["scoring_avg"].to_i, top_ten: stat["top_10"].to_i, vegas_odds: 0, missed_cut: missed_cut}, stroke_stat_attributes: {putts_per_round: 0, drive_distance: stat["drive_avg"].to_i, drive_accuracy: stat["drive_acc"].to_i, scramble_percentage: stat["scrambling_pct"].to_i, gir: stat["gir"].to_i})
			play.dfs_stat.update(dfs_rating: 0, draft_kings_salary: 0)
			play.rank_stat.update(pga_rank: stat["world_rank"].to_i, avg_score_last_year: stat["scoring_avg"].to_i, top_ten: stat["top_10"].to_i, vegas_odds: 0, missed_cut: missed_cut) 
			play.stroke_stat.update(putts_per_round: stat["putt_avg"], drive_distance: stat["drive_avg"].to_i, drive_accuracy: stat["drive_acc"].to_i, scramble_percentage: stat["scrambling_pct"].to_i, gir: stat["gir_pct"].to_i)
			play.save
		end 
	end
end
