Rails.application.routes.draw do
  resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/jbuilder', to: 'issues#jbuilder_list'
  get '/blueprinter', to: 'issues#blueprinter_list'
  get '/panko', to: 'issues#panko_list'
  get '/fastjsonapi', to: 'issues#jsonapi_list'
  get '/rabl', to: 'issues#rabl_list'
end
