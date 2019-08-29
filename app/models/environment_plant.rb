class EnvironmentPlant < ApplicationRecord
  belongs_to :plant
  belongs_to :environment

  validates :nickname, presence: true, allow_nil: true
end
