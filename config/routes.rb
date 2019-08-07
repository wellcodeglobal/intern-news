Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/index', to: 'home#index'
  get '/category', to: 'navbar#category'
  get '/article', to: 'news#article'
  post '/komentar', to: 'comment#create'

  end
