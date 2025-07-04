class User < ApplicationRecord
  # method for working with passwords
  has_secure_password

  has_many :entries
  has_many :reminders
  has_many :nutrition_logs
  has_many :supplements

  def full_name
    "#{f_name} #{l_name}"
  end
end
