class BienvenidaController < ApplicationController

	class ApiRequestFailed < StandardError; end

  def index
		require 'net/http'
		require 'json'
		
		@temperatures = Array.new

		#Se define la url del endpoint a consumir
		url = ENV['API_URL'] + "api/cities"
		uri = URI(url)
		begin
			#simula un 10% de posibilidades de fallar la consulta a la api
			raise BienvenidaController::ApiRequestFailed, "How unfortunate! The API Request Failed" unless rand(0.0...1.0) > 0.1

			response = Net::HTTP.get(uri)
			response = JSON.parse(response)
			p response
			#Para cumplir el requisito de solo almacenar a la base de datos pasado de 10 segundos
			#desde la ultima insercion, se define una cookie guardando la hora en que se realizo.
			if cookies[:last_update].nil?
				cookies[:last_update] = Time.now
			end
			if cookies[:last_update] < Time.now-10
				cookies[:last_update] = Time.now
			end

			response.each do |r|
				@temperatures.append(CitiesTemperature.new(r))
			end
			p @temperatures
		rescue BienvenidaController::ApiRequestFailed
			retry
		end
  end
end
