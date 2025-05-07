require 'rails_helper'

RSpec.describe "User Nutrition Logs Page", type: :request do
  it "shows all the nutrition logs for the user" do
    user = User.create!(f_name: "Mechelle", l_name: "Presnell", email: "me@me.com", password_digest: "test")
    log1 = NutritionLog.create!(user: user, meal_type: "Breakfast", food_type: "Oatmeal", calories: 300, protein_grm: 10, carbs_grm: 40, fats_grm: 8)
    log2 = NutritionLog.create!(user: user, meal_type: "Dinner", food_type: "Grilled Chicken", calories: 600, protein_grm: 45, carbs_grm: 40, fats_grm: 15)

    get "/users/#{user.id}/nutrition_logs"

    expect(response).to have_http_status(:ok)
    expect(response.body).to include("Breakfast")
    expect(response.body).to include("Grilled Chicken")
    expect(response.body).to include("300")
    expect(response.body).to include("600")
  end
end
