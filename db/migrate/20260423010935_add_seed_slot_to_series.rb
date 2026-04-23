class AddSeedSlotToSeries < ActiveRecord::Migration[8.1]
  def change
    add_column :series, :seed_slot, :integer
  end
end
