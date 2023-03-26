Rails.application.routes.draw do
  # get '/heroes', to: 'heroes#index'
  get '/heroes/summary', to: 'heroes#summary'
  get '/heroes/:id/summaries', to: 'heroes#summaries'
  # get powers
  get '/powers', to: 'powers#index'
  get '/powers/:id', to: 'powers#show'
  # update powers
  # patch '/powers/:id', to: 'powers#update'
  resources :powers, only: [:update]

  post '/hero_powers', to: 'hero_power#create'
end
