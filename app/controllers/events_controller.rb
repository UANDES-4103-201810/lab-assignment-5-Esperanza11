class EventsController < ApplicationController
  def create
    event = Event.create(name: params[:name], description: params[:description], start_date: params[:start_date], place_id: params[:place_id])

    render json: event
  end

  def destroy
    Event.find(params[:id]).destroy
  end

  def update
    @event = Event.find(params[:id])

    if @event.update_attributes()
      redirect_to :action => 'show', :id => @event
    else
      render :action => 'edit'
    end

  end

  def show
    @event = Event.find(params[:id])
    respond_to do |format|
      format.json { render json: @event.to_json}
    end
  end
end
