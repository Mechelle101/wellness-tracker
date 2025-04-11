class CreateEntries < ActiveRecord::Migration[8.0]
  def change
    create_table :entries do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :content
      t.date :date
      t.integer :mood
      t.integer :energy_level
      t.float :sleep_hours
      t.float :hydration_oz
      t.text :notes

      t.timestamps
    end
  end
end
