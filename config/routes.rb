Rails.application.routes.draw do

  # get 'session/new'
  #
  # get 'session/create'
  #
  # get 'session/destroy'

  root 'flights#index' # Routing for home page will show the flights available

  # get '/login' => 'pages#login' # To route for login page
  # get '/signup' => 'pages#signup' # To route for sign up page

  resources :reservations
  resources :flights
  resources :airplanes
  resources :users


  get '/login' => 'session#new', :as => 'login'  # sign-in page
  post '/login' => 'session#create' #
  delete '/login' => 'session#destroy' # path to log-out
  get '/admin' => 'pages#new' #path to admin log in



end
