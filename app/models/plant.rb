class Plant < ApplicationRecord
  has_many :environment_plants

  include PgSearch::Model
  pg_search_scope :search_all_plants,
    against: [ :name, :latin_name, :category, :max_height, :care_level, :light_preference, :description, :specifics ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  scope :by_category, -> (categories) do
    where(category: categories)
  end

  scope :by_height, -> (height) do
    where(max_height: height)
  end

  scope :by_light, -> (lights) do
    where(light_preference: lights)
  end

  scope :by_care, -> (care_levels) do
    where(care_level: care_levels)
  end

  def related
    Plant.all.reject { |x| x == self }
  end
end
