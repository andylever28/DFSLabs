class Player < ApplicationRecord
	has_one :dfs_stat
	has_one :rank_stat
	accepts_nested_attributes_for :dfs_stat, :rank_stat
end
