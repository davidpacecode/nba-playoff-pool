class CreateTeams < ActiveRecord::Migration[8.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :abbreviation
      t.integer :conference
      t.integer :seed

      t.timestamps
    end
  end
end
