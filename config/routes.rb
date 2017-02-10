Rails.application.routes.draw do
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
