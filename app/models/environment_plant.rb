class EnvironmentPlant < ApplicationRecord
  belongs_to :plant
  belongs_to :environment

  validates :nickname, presence: true, allow_nil: true

  mount_uploader :photo, PhotoUploader

  def plant_friends
    environment = self.environment_id
    all_plants_in_environement = EnvironmentPlant.where("environment_id = '#{environment}'")
    all_plants_in_environement.reject { |x| x == self }
  end
end
