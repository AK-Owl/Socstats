Rails.application.routes.draw do
  get 'grayscale/index'
  resources :developmentbyregions
  resources :developments
  resources :freedoms
  get 'home/index'
  get 'developments/index'
  get 'analysis/index'
  get 'analysis/results'

  #get 'developments/developmentanalysis'

  get 'analysis/results' => 'analysis#results', as: 'analysis'
  
  #get "developmentanalysis" => "developments#developmentanalysis", as: "developmentanalysis"

  root 'home#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
