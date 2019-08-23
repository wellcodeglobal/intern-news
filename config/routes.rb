Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #user
  get '/', to: 'home#index'
  get '/category/:id', to: 'category#show'
  get '/article/:id', to: 'article#show'
  post '/comment', to: 'comment#create'

  #login
  #get '/login', to:'auth#index'
  #post '/login', to:'auth#create'

  namespace :admin do
    #dashboard
    get '/', to:'dashboard#index'

    #article
    get 'articles/new', to:'articles#new'
    post 'articles', to:'articles#create'
    get 'articles', to:'articles#index'
    get 'articles/:id/edit', to:'articles#edit', as: :edit_article
    put 'articles/:id', to:'articles#update'
    delete 'articles/:id', to:'articles#destroy', as: :article

    #category
    get 'categories/new', to:'categories#new'
    post 'categories', to:'categories#create'
    get 'categories', to:'categories#index'
    get 'categories/:id/edit', to:'categories#edit', as: :edit_category
    put 'categories/:id', to:'categories#update'
    delete 'categories/:id', to:'categories#destroy', as: :category
  end
end
