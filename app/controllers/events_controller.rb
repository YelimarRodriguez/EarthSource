class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find params[:id]
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create safe_event

    if @event.save
      flash[:notice] = "Your event saved successfully"
      redirect_to @event
    else
      render 'new'
    end
  end

  def show
    @event = Event.find params[:id]
  end

  def edit
  end

  def update
    #needs to find it by id & we must update it with the the info user passed in
    event.update safe_event #.update is an active record method
    redirect_to event
  end

  private

  def safe_event
    params.require(:event).permit(:title, :description, :date, :time, :location)
  end

end
