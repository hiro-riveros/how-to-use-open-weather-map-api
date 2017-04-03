class OpenWeatherMap
  include HTTParty
  base_uri 'http://api.openweathermap.org'
  def initialize(city, unit = 'metric', lang = 'es')
    @params = { query: { q: city,
                         appid: ENV['APP_ID'],
                         units: unit,
                         lang: lang } }
  end

  def by_city
    response = self.class.get('/data/2.5/weather', @params)
    raise unless response['cod'].to_i == 200
    {
      current: response['main']['temp'],
      pressure: response['main']['pressure'],
      humidity: response['main']['humidity'],
      min: response['main']['temp_min'],
      max: response['main']['temp_min'],
      description: response['weather'][0]['description']
    }
  end
end
