Rails.application.routes.draw do
  root to: 'application#home'

  namespace :api do
    namespace :v1 do
      resources :beers, only: [:index, :show]
      get '/search', to: 'beers#search', as: 'search'
      get '/random', to: 'beers#random', as: 'random'
    end
  end
end
