require 'rest-client'
require 'JSON'

class WeathersController < ApplicationController

  def index
    dummy_countries = RestClient.get "https://restcountries.eu/rest/v2/all"
    countries = JSON.parse(dummy_countries)

    afghanistan_latlng = countries[0]["latlng"].join(', ').delete(' ')
    afghanistan_weather = RestClient.get "https://api.darksky.net/forecast/9dc2bf82b5bc64f9ca577857ba6b2641/#{afghanistan_latlng}"

    render json: afghanistan_weather
  end

end
