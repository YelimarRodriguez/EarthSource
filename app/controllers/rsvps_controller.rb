class RsvpsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def create
    event = Event.find params[:event_id]
    current_user.reservations << event
    redirect_to event, notice: "You have successfully registered for this event!"
  end
end
