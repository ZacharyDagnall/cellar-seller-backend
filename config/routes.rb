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
  # to save a tracked search
  post '/users/:id/trackedsearches', to: "users#save_search"
  #/users/id/saveditems - get backed saved item folders
  get '/users/:id/saveditems', to: "users#saved_items"
  #grabs items in the main folder for this user
  get '/users/:id/main', to: "users#main"

  # save an item to a new folder
  post '/users/:id/saveitemnewfolder', to: "users#save_item_new_folder"
    
  #/folders/id/items
  get '/folders/:id/items', to: "folders#items"

  #/ fetch search results
  get '/search/:site/:search_term', to: "search#search"

  get "/me", to: "users#me"
  
end
