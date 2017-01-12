class CreateDfsStats < ActiveRecord::Migration[5.0]
  def change
    create_table :dfs_stats do |t|
      t.integer :draft_kings_salary
      t.integer :dfs_rating
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
