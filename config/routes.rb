Rails.application.routes.draw do

  # get 'session/new'
  #
  # get 'session/create'
  #
  # get 'session/destroy'

  root 'flights#search' # Routing for home page will show the flights available

  resources :flights do
    member do
      resources :reservations
    end
  end
  resources :airplanes
  resources :users


  get '/login' => 'session#new', :as => 'login'  # sign-in page
  post '/login' => 'session#create' #
  delete '/login' => 'session#destroy' # path to log-out
  get '/admin' => 'pages#new' #path to admin log in
  get '/search' => 'flights#search' # This will be used for backbone
  get '/search_by_query' => 'flights#search_by_query'
  get '/flight/:id' => 'flights#flight'



end
