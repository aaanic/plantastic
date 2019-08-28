class Plant < ApplicationRecord
  has_many :environment_plants

  include PgSearch::Model
  pg_search_scope :search_all_plants,
    against: [ :name, :latin_name, :category, :max_height, :care_level, :light_preference, :description, :specifics ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
