Rails.application.routes.draw do

  #home page
  get("/", { :controller => "users", :action => "home" })
  
  #list of all users
  get("/users", { :controller => "users", :action => "index" })

  #user details
  get("/users/:username", { :controller => "users", :action => "show" })
  
  post("/insert_user_record", { :controller => "venues", :action => "create" })
  post("/update_users/:user_id", { :controller => "users", :action => "update" })

  #list of all venues
  get("/venues", { :controller => "venues", :action => "index" })

  post("/insert_venue_record", { :controller => "venues", :action => "create" })

  #venue details
  get("/venues/:venue_id", { :controller => "venues", :action => "show" })

  post("/update_venue/:the_id", { :controller => "application", :action => "update" })

  #delete venue
  get("/delete_venue/:id_to_delete", { :controller => "venue", :action => "destroy" })
  
  post("/insert_comment_record", { :controller => "comments", :action => "create" })
end
