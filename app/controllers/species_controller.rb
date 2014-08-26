class SpeciesController < ApplicationController
  def index
    @species = Species.all
    render('species/index.html.erb')
  end

  def new
    @species = Species.new
    render('species/new.html.erb')
  end

  def create
    @species = Species.create(params[:species])
    if @species.save
      render('species/success.html.erb')
    else
      render('species/new.html.erb')
    end
  end
end
