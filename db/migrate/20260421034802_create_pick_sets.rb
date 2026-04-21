class CreatePickSets < ActiveRecord::Migration[8.1]
  def change
    create_table :pick_sets do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.references :bracket, null: false, foreign_key: true

      t.timestamps
    end
  end
end
