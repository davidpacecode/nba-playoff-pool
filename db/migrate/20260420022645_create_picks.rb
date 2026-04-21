class CreatePicks < ActiveRecord::Migration[8.1]
  def change
    create_table :picks do |t|
      t.references :user, null: false, foreign_key: true
      t.references :series, null: false, foreign_key: true
      t.references :predicted_winner, null: false, foreign_key: { to_table: :teams }
      t.references :pick_set, null: false, foreign_key: true
      t.timestamps
    end
  end
end
