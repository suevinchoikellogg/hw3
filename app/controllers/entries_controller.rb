class EntriesController < ApplicationController

  def index
    @entries = Entry.all
  end

  def new
    @entries = Entry.new
  end

  def create
    @entries = Entry.new(params["entry"])
    @entries["title"] = params["title"]
    @entries["description"] = params["description"]
    @entries["posted_on"] = params["posted_on"]
    @entries.save
    redirect_to "/entries"
  end

end
