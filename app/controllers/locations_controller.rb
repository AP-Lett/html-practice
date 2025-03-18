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
      flash[:notice] = 'Location has been created successfully.'
    else
      render :new
    end
  end

  def edit
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])

    if @location.update(
      country: params["location"][:country] || location.country,
      capital: params["location"][:capital] || location.capital,
      fun_fact: params["location"][:fun_fact] || location.fun_fact
    )
    redirect_to @location, notice: 'Location was successfully updated.'
    flash[:notice] = 'Location was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to locations_path, notice: 'Location was successfully deleted.'
  end
end
