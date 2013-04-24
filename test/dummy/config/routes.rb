Rails.application.routes.draw do

  resources :blogs


  mount Conductor::Engine => "/conductor"
end
