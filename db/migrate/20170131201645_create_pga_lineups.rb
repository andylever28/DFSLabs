class CreatePgaLineups < ActiveRecord::Migration[5.0]
  def change
    create_table :pga_lineups do |t|
      t.integer :salary_cap

      t.timestamps
    end
  end
end
