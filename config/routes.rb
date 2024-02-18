Rails.application.routes.draw do
  resources :employees
  get '/jwt/token', to: 'jwt#token'
end