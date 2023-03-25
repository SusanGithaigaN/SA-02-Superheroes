Rails.application.routes.draw do
  # get '/heroes', to: 'heroes#index'
  get '/heroes/summary', to: 'heroes#summary'
end
