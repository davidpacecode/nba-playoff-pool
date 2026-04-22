class MakeSeriesTeamReferencesNullable < ActiveRecord::Migration[8.1]
  disable_ddl_transaction!

  def up
    execute "PRAGMA foreign_keys = OFF"

    drop_table :series

    create_table :series do |t|
      t.integer :round
      t.integer :conference
      t.references :top_seed, null: true, foreign_key: { to_table: :teams }, index: true
      t.references :bottom_seed, null: true, foreign_key: { to_table: :teams }, index: true
      t.integer :top_seed_wins
      t.integer :bottom_seed_wins
      t.references :winner, null: true, foreign_key: { to_table: :teams }, index: true
      t.integer :status
      t.datetime :next_game_at
      t.references :bracket, null: false, foreign_key: true, index: true
      t.timestamps
    end

    execute "PRAGMA foreign_keys = ON"
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
