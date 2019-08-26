class EnvironmentPlant < ApplicationRecord
  belongs_to :plant
  belongs_to :environment
end
