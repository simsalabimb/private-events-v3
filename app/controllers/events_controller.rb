class EventsController < ApplicationController
    def index
        @event = Event.all
    end
    
    def new
        @event = Event.new
    end

    def create
        @event = Event.new(event_params)

        if @event.save
            redirect_to event_path(@event)
        else
            redirect_to 'events/new'
        end
    end

    def show
        @event = Event.find_by(id: params[:id])
    end

    def event_params
     params.require(:event).permit(:title, :description, :date, :location)
    end
end
