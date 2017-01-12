class Player < ApplicationRecord
	has_one :dfs_stat
	accepts_nested_attributes_for :dfs_stat
end
