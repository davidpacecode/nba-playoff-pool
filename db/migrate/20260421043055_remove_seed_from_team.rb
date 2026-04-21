class RemoveSeedFromTeam < ActiveRecord::Migration[8.1]
  def change
    remove_column :teams, :seed, :integer
  end
end
