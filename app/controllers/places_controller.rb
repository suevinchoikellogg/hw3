class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def show
    @place = Place.find_by({ "id" => params["id"] })
    @entries = Entry.where({"place_id" => @place["id"]})
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new
    # @places = Place.new(params["place"])
    @place["name"] = params["name"]
    
    @place.save

    redirect_to "/places"
  end
end


# URL: https://3000-suevinchoikellog-hw3-ui84kn1fo4y.ws-us108.gitpod.io/places
