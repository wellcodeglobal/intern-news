Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'home#index'
  get '/article/:id', to: 'article#show'
  post '/comment', to: 'comment#create'
  get '/category/:id', to: 'category#show'
end
