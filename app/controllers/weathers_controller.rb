class WeathersController < ApplicationController
  before_action :set_city, only: %i[current charts]
  before_action :set_cities, only: %i[index current charts]

  def index
    @cities
  end

  def current
    @weather = Weather.current(@city)
    raise if @weather.blank?
    render json: { weather: @weather, state: :ok }, status: :ok
  rescue => e
    render json: { message: e.message, state: :error }, status: :bad_request
  end

  def charts
    @weathers = Weather.last_month(@city.try(:id)).group_max_temp
  end

  private

  def set_city
    @city = City.find_by(id: params[:city_id]) if params[:city_id]
  end

  def set_cities
    @cities = City.all.order(name: :asc)
  end
end
