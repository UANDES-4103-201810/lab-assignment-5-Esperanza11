class TicketsController < ApplicationController
  def create
    ticket = Ticket.create(description: params[:description], price: params[:price], event_id: params[:event_id])

    render json: ticket
  end

  def destroy
    Ticket.find(params[:id]).destroy
  end

  def update
    @ticket = Ticket.find(params[:id])

    if @ticket.update_attributes()
      redirect_to :action => 'show', :id => @ticket
    else
      render :action => 'edit'
    end
  end

  def show
    @ticket = Ticket.find(params[:id])
    respond_to do |format|
      format.json { render json: @ticket.to_json}
    end
  end
end
