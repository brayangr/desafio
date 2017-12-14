class CitiesTemperaturesController < ApplicationController

  def index
    @temperatures = CitiesTemperature.all.sort_by(&:temperature)
  end
end
