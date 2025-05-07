class UsersController < ApplicationController
  def dashboard
    @user = User.find(params[:id])
    @entries = @user.entries.order(created_at: :desc).limit(5)
    @nutrition_logs = @user.nutrition_logs.order(created_at: :desc).limit(3)
    @supplements = @user.supplements.order(taken_at: :desc).limit(3)
    @reminders = @user.reminders.order(remind_at: :asc).limit(3)
  end

  def nutrition_logs
    @user = User.find(params[:id])
    @nutrition_logs = @user.nutrition_logs.order(created_at: :desc)
  end
end
