Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
HEAD

  #user

7d6c4f45a9eca4395d4de606ddcfead94ef1d4df
  get '/', to: 'home#index'
  get '/article/:id', to: 'article#show'
  post '/comment', to: 'comment#create'
  get '/category/:id', to: 'category#show'
HEAD

  #login
  #get '/login', to:'auth#index'
  #post '/login', to:'auth#create'

  #dashboard
  get '/admin', to:'dashboard#index'

  #article
  get '/admin/articles/new', to:'admin/articles#new'
  post '/admin/articles', to:'admin/articles#create'
  get '/admin/articles', to:'admin/articles#index'
  get '/admin/articles/:id/edit', to:'admin/articles#edit'
  put '/admin/articles/:id', to:'admin/articles#update'
  delete '/admin/articles/:id', to:'admin/articles#destroy'

  #category
  get '/admin/categories/new', to:'admin/categories#new'
  post '/admin/categories', to:'admin/categories#create'
  get '/admin/categories', to:'admin/categories#index'
  get '/admin/categories/:id/edit', to:'admin/categories#edit'
  put '/admin/categories/:id', to:'admin/categories#update'
  delete '/admin/categories/:id', to:'admin/categories#destroy'

7d6c4f45a9eca4395d4de606ddcfead94ef1d4df
end
