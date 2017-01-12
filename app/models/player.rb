class Player < ApplicationRecord
	has_one :dfs_stat
	has_one :rank_stat
	has_one :stroke_stat
	accepts_nested_attributes_for :dfs_stat, :rank_stat, :stroke_stat
end
