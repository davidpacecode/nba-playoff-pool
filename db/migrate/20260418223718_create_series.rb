class CreateSeries < ActiveRecord::Migration[8.1]
  def change
    create_table :series do |t|
      t.integer :round
      t.integer :conference
      t.references :top_seed, null: false, foreign_key: { to_table: :teams }
      t.references :bottom_seed, null: false, foreign_key: { to_table: :teams }
      t.integer :top_seed_wins
      t.integer :bottom_seed_wins
      t.references :winner, foreign_key: { to_table: :teams } 
      t.integer :status
      t.datetime :next_game_at
      t.integer :season
      t.references :bracket, null: false, foreign_key: true
      t.timestamps
    end
  end
end
