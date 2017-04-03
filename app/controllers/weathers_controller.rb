class WeathersController < ApplicationController
  before_action :set_city, only: [:current]

  def index
    @cities = City.all.order(name: :asc)
  end

  def current
    @weather = Weather.current(@city)
    raise if @weather.blank?
    render json: { weather: @weather, state: :ok }, status: :ok
  rescue => e
    render json: { message: e.message, state: :error }, status: :bad_request
  end

  private

  def set_city
    @city = City.find_by(id: params[:city_id]) if params[:city_id]
  end
end
