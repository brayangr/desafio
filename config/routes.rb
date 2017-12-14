Rails.application.routes.draw do
  root 'bienvenida#index'

  resources :cities_temperatures
end
