class CreateNutritionLogs < ActiveRecord::Migration[8.0]
  def change
    create_table :nutrition_logs do |t|
      t.references :user, null: false, foreign_key: true
      t.string :meal_type
      t.string :food_type
      t.integer :calories
      t.integer :protein_grm
      t.integer :carbs_grm
      t.integer :fats_grm
      t.text :notes

      t.timestamps
    end
  end
end
