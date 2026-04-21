class CreateBrackets < ActiveRecord::Migration[8.1]
  def change
    create_table :brackets do |t|
      t.string :name
      t.integer :season

      t.timestamps
    end
  end
end
