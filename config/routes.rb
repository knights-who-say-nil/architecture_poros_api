Rails.application.routes.draw do
  namespace :api do
    get '/buildings' => 'buildings#index'
    post '/buildings' => 'buildings#create'
    get '/buildings/:id' => 'buildings#show'
    patch '/buildings/:id' => 'buildings#update'
    delete '/buildings/:id' => 'buildings#destroy'
  end
end
