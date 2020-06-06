class FlatsController < ApplicationController
  def index
   @flats = Flat.all
  end

  def show
      @flats = Flat.geocoded # returns flats with coordinates
      @flat = Flat.find(params[:id])

    @markers =
      [{
        lat: @flat.latitude,
        lng: @flat.longitude
      }]
    end
  end
