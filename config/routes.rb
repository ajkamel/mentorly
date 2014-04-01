Mentorly::Application.routes.draw do
 
get '/login', to: 'sessions#new'
post '/sessions', to: 'sessions#create'
get '/logout', to: 'sessions#destroy'

root to: 'users#index'

resources :users
resources :groups

resources :conversations, only: [:index, :show, :new, :create] do
    member do
      post :reply
      post :trash
      post :untrash
  end
end
  
end
