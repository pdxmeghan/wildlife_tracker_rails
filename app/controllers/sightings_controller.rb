class SightingsController < ApplicationController
  def new
    @species = Species.find(params[:species_id])
    @sighting = Sighting.new
    render('sightings/new.html.erb')
  end

  def create
    @species = Species.find(params[:species_id])
    @sighting = Sighting.create(params[:sighting])
    if @sighting.save
      render('sightings/success.html.erb')
    else
      render('sightings/new.html.erb')
    end
  end
end
