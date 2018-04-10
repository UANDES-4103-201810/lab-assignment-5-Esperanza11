class PlacesController < ApplicationController
  def create
    place = Place.create(name: params[:name], address: params[:address], capacity: params[:capacity])

    render json: place
  end

  def destroy
    Place.find(params[:id]).destroy
  end

  def update
    @place = Place.find(params[:id])

    if @place.update_attributes()
      redirect_to :action => 'show', :id => @place
    else
      render :action => 'edit'
    end
  end

  def show
    @place = Place.find(params[:id])
    respond_to do |format|
      format.json { render json: @place.to_json}
    end
  end
end
