class Sighting < ActiveRecord::Base
  validates :date, :presence => true
  validates_date :date
  validates :latitude, :presence => true
  validates :longitude, :presence => true
  validates :latitude, numericality: { only_integer: true}
  validates :longitude, numericality: { only_integer: true}

  belongs_to :species
end
