class Api::V1::EventsController < ApiController
  def index
    render json: Event.all, include:['user']
  end
end
