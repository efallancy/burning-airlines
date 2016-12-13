Rails.application.routes.draw do
  
  root 'flights#index' # Routing for home page will show the flights available

  get '/login' => 'pages#login' # To route for login page
  get '/signup' => 'pages#signup' # To route for sign up page

  resources :reservations
  resources :flights
  resources :airplanes
  resources :users

end
