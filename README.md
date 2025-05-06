# README

Wellness Tracker

Overview

The Wellness Tracker is a Ruby on Rails application designed to help users log and monitor key aspects of their physical and mental well-being. It organizes user data across multiple dimensions like daily journal entries, nutrition, supplements, and reminders — making it easier to reflect on wellness habits and patterns over time.

Features

Track daily wellness entries (mood, energy, sleep, hydration, and notes)

Tag entries with categories like "Exercise" or "Mental Health"

Log and monitor meals with full nutrition breakdowns

Record supplement usage with dosage and timestamps

Create and view personal wellness reminders

Use Cases & Routes

Dashboard View

Route: /users/:id/dashboard
Displays a snapshot of:

Recent wellness entries

Recent meals

Recent supplements

Upcoming reminders

Entry Summary View

Route: /entries/:id/summary
Displays full details for a single wellness entry:

Includes mood, sleep, hydration, energy, and notes

Shows all associated categories/tags

Category Entry List

Route: /categories/:id/entries
Lists all entries associated with a selected category (e.g., "Exercise")

Nutrition Logs View

Route: /users/:id/nutrition_logs
Displays all logged meals for the user, with:

Meal type and food items

Calories, protein, carbs, fats

User Journey

Start at their dashboard to view recent activity

Click into entries to see details and review progress

Use categories to explore patterns (like stress vs. sleep)

Log meals and supplements to track diet and health support

Check reminders to stay on track with health habits

Setup & Run Instructions

Note: These can be expanded based on your deployment setup.

# Clone the repository
$ git clone https://github.com/yourusername/wellness-tracker.git

# Navigate into the project
$ cd wellness-tracker

# Install dependencies
$ bundle install

# Set up the database
$ rails db:create db:migrate db:seed

# Run the Rails server
$ rails server
Testing

Run request specs:

bundle exec rspec
License

This project is for educational purposes.

