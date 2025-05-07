require 'rails_helper'

RSpec.describe "Category Entry List", type: :request do
  it "displays all entry's for a specific category" do
    user = User.create!(f_name: "Mechelle", l_name: "Presnell", email: "me@me.com", password_digest: "secret")

    category = Category.create!(name: "Mindfulness")
    entry1 = Entry.create!(user: user, title: "Meditation Log", date: Date.today, mood: 9, energy_level: 6, sleep_hours: 7.0, hydration_oz: 60, notes: "Deep focus")
    entry2 = Entry.create!(user: user, title: "Evening Journal", date: Date.yesterday, mood: 7, energy_level: 5, sleep_hours: 8.0, hydration_oz: 64, notes: "Wind down")

    entry1.categories << category
    entry2.categories << category

    get "/categories/#{category.id}/entries"

    expect(response).to have_http_status(:ok)
    expect(response.body).to include("Mindfulness")
    expect(response.body).to include("Meditation Log")
    expect(response.body).to include("Evening Journal")
  end
end
