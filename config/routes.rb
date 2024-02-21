Rails.application.routes.draw do
  resources :places
  # get "places", :controller => "places", :action => "index"
  # get "places/new", :controller => "places", :action => "new"
  # get "places/:id", :controller => "places", :action => "show"
  # get "places", :controller => "places", :action => "create"


  resources :entries
  root 'places#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })
end
