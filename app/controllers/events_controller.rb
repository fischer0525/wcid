class EventsController < ApplicationController


  def index
    @events = Event.search(params[:term])
  end

  def show
    @event = Event.find(params[:id])
    @user = @event.user
  end

  def new
    @event = Event.new
  end

  def create
    @events = Event.search(params[:term])
    @event = Event.new(event_params)
    @event.user = current_user

    if @event.save
      flash[:notice] = "Event Added Successfully"
      redirect_to @event
    else
      flash[:notice] = @event.errors.full_messages
      render action: "new"
    end
  end

  def edit
    @bar = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.assign_attributes(event_params)

    if @event.valid?
      @bar.save
      flash[:notice] = "Event Edited Successfully"
      redirect_to @event
    else
      flash[:notice] = @event.errors.full_messages
      render action: 'edit'
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @Event.delete

    flash[:notice] = "Event Deleted"
    redirect_to root_path
  end

  private

  def event_params
    params.require(:event).permit(:event_date, :event_time, :event_name, :organization, :address, :city, :state, :zip, :description, :term)
  end


end
