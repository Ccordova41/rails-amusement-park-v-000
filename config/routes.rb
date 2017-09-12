Rails.application.routes.draw do

  get 'user/home'

root "static#home"

 get '/signin' => 'sessions#new'
 post '/signin' => 'sessions#create'
 get "/signout" => "sessions#destroy"
 post '/rides' => "rides#new"

 resources :users
 resources :attractions
end
