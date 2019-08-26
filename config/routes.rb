Rails.application.routes.draw do
  resource :session, controller: 'sessions', only:  %i[create]
   get '/session', to: redirect('/')

   get "/sign_in" => "clearance/sessions#new", as: "sign_in"
   delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
   get "/sign_up" => "clearance/users#new", as: "sign_up"
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
    get 'auth/login'
    post 'auth/login_auth'
    get 'auth/signup'
    post 'auth/create'
    get 'auth/dashboard'
    root 'auth#signup'

    #dashboard
    #get '/', to:'dashboard#index'

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
