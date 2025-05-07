require 'rails_helper'

RSpec.describe "User Dashboard", type: :request do
  it "display the user's dashboard with recent data" do
    user = User.create!(
      f_name: "Mechelle",
      l_name: "Presnell",
      email: "me@me.com",
      password_digest: "testpassword"
    )

    Entry.create!(user: user, title: "Morning Check-in", date: Date.today, mood: 7, energy_level: 6, sleep_hours: 7.5, hydration_oz: 64, notes: "Sleep well")
    NutritionLog.create!(user: user, meal_type: "Lunch", food_type: "Salad", calories: 350, protein_grm: 25, carbs_grm: 25, fats_grm: 10, notes: "Light meal")
    Supplement.create!(user: user, name: "Fish Oil", dose: 200, unit: "mg", taken_at: Time.now, notes: "Omega-3")
    Reminder.create!(user: user, title: "Meditate", description: "10 Minute breathing", remind_at: 1.hour.from_now, frequency: "Daily")

    get "/users/#{user.id}/dashboard"

    expect(response).to have_http_status(:ok)
    expect(response.body).to include("Mechelle Presnell")
    expect(response.body).to include("Morning Check-in")
    expect(response.body).to include("Fish Oil")
    expect(response.body).to include("Lunch")
    expect(response.body).to include("Meditate")
  end
end
