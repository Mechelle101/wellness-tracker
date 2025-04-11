class RenameRemiindAtToRemindAtInReminders < ActiveRecord::Migration[8.0]
  def change
    rename_column :reminders, :remiind_at, :remind_at
  end
end
