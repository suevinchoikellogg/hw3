class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def show
    @place = Place.find_by({ "id" => params["id"] })
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(params["place"])
    @place["name"] = params["name"]
    @place.save
    redirect_to "/places"
  end
end
