Rails.application.routes.draw do
  resources :items
  #/items post new item
  #/items delete items

  resources :folders
  #/folders post new folder
  #/folders delete

  resources :users
  #/users post create new acct
  #/users/id patch edit username/password
  #/users/id delete delete acct

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #/users post login
  post '/login', to: "users#login"
  #/users/id/trackedsearches - get back saved searches
  get '/users/:id/trackedsearches', to: "users#tracked_searches"
  #/users/id/saveditems - get backed saved item folders
  get '/users/:id/saveditems', to: "users#saved_items"
  
  #/folders/id/items
  get '/folders/:id/items', to: "folders#items"

  post '/search/:search', to: "search#fetch"
  
end
