Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => 'home#index', as: :home

  get '/requests/new' => 'requests#new', as: :new_request

  post '/requests' => 'requests#create', as: :requests

  get "/requests/:id" => 'requests#show', as: :request

  get "/requests" => 'requests#index'

  get '/requests/:id/edit' => 'requests#edit', as: :edit_request

  patch '/requests/:id' => 'requests#update'

  delete 'requests/:id' => 'requests#destroy'

  patch '/requests/:id/actions' => 'requests#actions', as: :actions_status


end
