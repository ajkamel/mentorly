Mentorly::Application.routes.draw do

get '/login', to: 'sessions#new'
post '/sessions', to: 'sessions#create'
get '/logout', to: 'sessions#destroy'

root to: 'users#welcome'

resources :users
resources :groups do
	resources :group_messages
end

end
