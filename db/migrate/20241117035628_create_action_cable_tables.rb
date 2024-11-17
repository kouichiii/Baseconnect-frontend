class CreateActionCableTables < ActiveRecord::Migration[6.1]
  def change
    create_table :action_cable_channels do |t|
      t.string :identifier, null: false
      t.text :data

      t.timestamps
    end

    add_index :action_cable_channels, :identifier, unique: true
  end
end
