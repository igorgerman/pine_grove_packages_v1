Rails.application.routes.draw do
  root :to => "apartments#index"
  # Routes for the Package resource:
  # CREATE
  get "/packages/new", :controller => "packages", :action => "new"
  post "/create_package", :controller => "packages", :action => "create"

  # READ
  get "/packages", :controller => "packages", :action => "index"
  get "/packages/:id", :controller => "packages", :action => "show"

  # UPDATE
  get "/packages/:id/edit", :controller => "packages", :action => "edit"
  post "/update_package/:id", :controller => "packages", :action => "update"

  # DELETE
  get "/delete_package/:id", :controller => "packages", :action => "destroy"
  #------------------------------

  # Routes for the Building resource:
  # CREATE
  get "/buildings/new", :controller => "buildings", :action => "new"
  post "/create_building", :controller => "buildings", :action => "create"

  # READ
  get "/buildings", :controller => "buildings", :action => "index"
  get "/buildings/:id", :controller => "buildings", :action => "show"

  # UPDATE
  get "/buildings/:id/edit", :controller => "buildings", :action => "edit"
  post "/update_building/:id", :controller => "buildings", :action => "update"

  # DELETE
  get "/delete_building/:id", :controller => "buildings", :action => "destroy"
  #------------------------------

  # Routes for the Apartment resource:
  # CREATE
  get "/apartments/new", :controller => "apartments", :action => "new"
  post "/create_apartment", :controller => "apartments", :action => "create"

  # READ
  get "/apartments", :controller => "apartments", :action => "index"
  get "/apartments/:id", :controller => "apartments", :action => "show"

  # UPDATE
  get "/apartments/:id/edit", :controller => "apartments", :action => "edit"
  post "/update_apartment/:id", :controller => "apartments", :action => "update"

  # DELETE
  get "/delete_apartment/:id", :controller => "apartments", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
