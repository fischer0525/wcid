class Api::V1::ItemsController < ApplicationController
  def index
    render json: Event.all
  end
end
