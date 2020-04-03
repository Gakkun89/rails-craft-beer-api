Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :beers, only: [:index, :show]
      get '/search', to: 'beers#search', as: 'search'
    end
  end
end
