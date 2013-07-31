class CitiesController < ApplicationController

  def new
  	@city = City.new
  end

  def edit
  end

  def create
  	@city = City.new(city_params)
    @city.save
    redirect_to cities_path

  end

  def update
  end

  def index
  	@city = City.all
  end

  def show
  end

  def destroy
  end

  private

  def city_params
    params.require(:city).permit(:name)
  end

end