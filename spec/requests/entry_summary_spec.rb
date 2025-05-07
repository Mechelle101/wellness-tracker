require 'rails_helper'

RSpec.describe "Entry Summary Page", type: :request do
  it "displays an entry's full details" do
    user = User.create!(f_name: "Mechelle", l_name: "Presnell", email: "me@me.com", password_digest: "secret")
    entry = Entry.create!(user: user, title: "Wellness Log", content: "Great day", date: Date.today, mood: 8, energy_level: 7, sleep_hours: 8.0, hydration_oz: 72, notes: "Did yoga")
    category = Category.create!(name: "Exercise")
    entry.categories << category

    get "/entries/#{entry.id}/summary"

    expect(response).to have_http_status(:ok)
    expect(response.body).to include("Wellness Log")
    expect(response.body).to include("8/10")
    expect(response.body).to include("Exercise")
    expect(response.body).to include("Did yoga")
  end
end
