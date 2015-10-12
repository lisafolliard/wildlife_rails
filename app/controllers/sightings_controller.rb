class SightingsController < ApplicationController
  def new
    @species = Species.find(params[:species_id])
    @sighting = @species.sightings.new
  end

  def create
    @species = Species.find(params[:species_id])
    @sighting = @species.sightings.new(sighting_params)
    if @sighting.save
      redirect_to species_path(@species)
    else
      render :new
    end
  end

  def destroy
    @species = Species.find(params[:species_id])
    @sighting = Sighting.find(params[:id])
    @sighting.destroy
    redirect_to species_path(@species)
  end

  private
  def sighting_params
    params.require(:sighting).permit(:date, :image, :longitude, :latitude)
  end
end
