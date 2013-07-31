class CountriesController < ApplicationController

def new
  	@country = Country.new
  end

  def edit
  end

  def create
  	@country = Country.new(country_params)
    @country.save
    redirect_to countries_path

  end

  def update
  end

  def index
  	@country = Country.all
  end

  def show
  end

  def destroy
  end

  private

  def country_params
    params.require(:country).permit(:name)
  end

end
