class AboutsController < ApplicationController
  def index
    @events = Event.search(params[:term])
    
  end
end
