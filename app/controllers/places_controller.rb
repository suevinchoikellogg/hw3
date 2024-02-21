class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def show
    @places = Place.find_by({ "id" => params["id"] })
  end

  def new
    @places = Place.new
  end

  def create
    @places = Place.new
    # @places = Place.new(params["place"])
    @places["name"] = params["name"]
    @places.save

    redirect_to "/places"
  end
end


# URL: https://3000-suevinchoikellog-hw3-ui84kn1fo4y.ws-us108.gitpod.io/places
