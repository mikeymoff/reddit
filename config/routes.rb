Rails.application.routes.draw do
  root 'subs#index'

  # get 'subs/index' does the same as the item above

  # resources :subs
#the above line will create all of the CRUD actions
  # get '/subs', to: 'subs#index'
  # get '/subs/:id', to: 'subs#show'
  # get '/subs/:id', to: 'subs#edit'
  # put '/subs/:id', to: 'subs#update'
  # delete '/subs/:id', to: 'subs#destroy'

  resources :subs do
    resources :topics

  end



end
