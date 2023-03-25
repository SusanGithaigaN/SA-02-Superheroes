Rails.application.routes.draw do
  # get '/heroes', to: 'heroes#index'
  get '/heroes/summary', to: 'heroes#summary'
  get '/heroes/:id/summaries', to: 'heroes#summaries'
  # get powers
  get '/powers', to: 'powers#index'
  get '/powers/:id', to: 'powers#show'
end
