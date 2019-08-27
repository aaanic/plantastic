class Environment < ApplicationRecord
  # has_many :environment_users
  # has_many :users, through: :environment_users
  has_many :users

  has_many :environment_plants
  has_many :plants, through: :environment_plants

  has_many :reminders
end
