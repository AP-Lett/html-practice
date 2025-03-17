class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end
  
  def show
    @location = Location.find(params[:id])
  end

  def new
    @location = Location.new
  end
  
  def create
    @location = Location.new(
      country: params["location"][:country],
      capital: params["location"][:capital],
      fun_fact: params["location"][:fun_fact]
    )

    if @location.save
      redirect_to @location, notice: 'Location has been created successfully.'
    else
      render :new
    end
  end
end
