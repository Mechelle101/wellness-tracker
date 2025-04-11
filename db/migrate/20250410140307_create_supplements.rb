class CreateSupplements < ActiveRecord::Migration[8.0]
  def change
    create_table :supplements do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.float :dose
      t.string :unit
      t.datetime :taken_at
      t.text :notes

      t.timestamps
    end
  end
end
