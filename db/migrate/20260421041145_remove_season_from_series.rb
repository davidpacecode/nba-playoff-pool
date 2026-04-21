class RemoveSeasonFromSeries < ActiveRecord::Migration[8.1]
  disable_ddl_transaction!

  def up
    execute "PRAGMA foreign_keys = OFF"
    remove_column :series, :season, :integer
    execute "PRAGMA foreign_keys = ON"
  end

  def down
    execute "PRAGMA foreign_keys = OFF"
    add_column :series, :season, :integer
    execute "PRAGMA foreign_keys = ON"
  end
end
