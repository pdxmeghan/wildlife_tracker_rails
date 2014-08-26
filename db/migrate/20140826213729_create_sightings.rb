class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.date   :date
      t.integer :latitude
      t.integer :longitude
    end
  end
end
