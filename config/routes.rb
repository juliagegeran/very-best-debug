Rails.application.routes.draw do

  #home page
  get("/", { :controller => "users", :action => "home" })
  
  #list of all users
  get("/users", { :controller => "users", :action => "index" })

  #user details
  get("/users/:username", { :controller => "users", :action => "show" })
  
  #insert new username
  post("/insert_user_record", { :controller => "users", :action => "create" })

  #update user info
  post("/update_users/:old_username", { :controller => "users", :action => "update" })

  #list of all venues
  get("/venues", { :controller => "venues", :action => "index" })

  #create new venue
  post("/insert_venue_record", { :controller => "venues", :action => "create" })

  #venue details
  get("/venues/:venue_id", { :controller => "venues", :action => "show" })

  #update venue details
  post("/update_venue/:the_id", { :controller => "venues", :action => "update" })

  #delete venue
  get("/delete_venue/:id_to_delete", { :controller => "venues", :action => "destroy" })

  #insert comment
  post("/insert_comment_record", { :controller => "comments", :action => "create" })
end
