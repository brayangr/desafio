class BienvenidaController < ApplicationController
  def index
		require 'net/http'
		require 'json'
		
		url = ENV['API_URL'] + "api/cities"
		p url
		uri = URI(url)
		response = Net::HTTP.get(uri)
		response = JSON.parse(response)
		p response
		if cookies[:last_update].nil?
			cookies[:last_update] = Time.now
		end
		if cookies[:last_update] < Time.now-10
			p cookies[:last_update] + " " + Time.now.to_s
			cookies[:last_update] = Time.now
		end
  end
end
