class Jobs < ActiveRecord::Migration[8.0]
  def change
    create_table :jobs do |t|
      t.references :category, null: false, foreign_key: true
      t.integer :income
      t.string :title

      t.timestamps
    end
  end
end
