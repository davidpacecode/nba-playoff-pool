class CreateBracketTeams < ActiveRecord::Migration[8.1]
  def change
    create_table :bracket_teams do |t|
      t.references :bracket, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true
      t.integer :seed

      t.timestamps
    end
  end
end
