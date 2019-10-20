Rails.application.routes.draw do
  root 'grayscale#index'

  resources :developmentbyregions
  resources :developments
  resources :freedoms

  get 'grayscale/index'
  get 'home/index'
  get 'livedata/index'
  get 'developments/index'
  get 'analysis/index'
  get 'analysis/results'
  get 'analysis/results' => 'analysis#results', as: 'analysis'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
