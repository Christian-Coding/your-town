class CitiesController < ApplicationController
  def show
    @city = City.find(params[:id])
  end

  def index
    @cities = City.all
    @markers = @cities.geocoded.map do |city|
      {
        lat: city.latitude,
        lng: city.longitude
         #info_window: render_to_string(partial: "info_window", locals: {city: city})
      }
    end
  end



  private

  def city_params
    params.require(:city).permit(:name, :district, :address)
  end
end
