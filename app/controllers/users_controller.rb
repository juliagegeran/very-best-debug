class UsersController < ApplicationController

  def home
    redirect_to("/users") 
  end

  def index
    matching_users = User.all
    @users = matching_users.order(:created_at)

    render({ :template => "user_templates/all_users"})
  end
  
  def show
    username = params.fetch("username")
    matching_users = User.where({ :username => username })
    @user = matching_users.at(0)

    render({ :template => "user_templates/user_details"})
  end
  
  def create
    user = User.new
    user.username = params.fetch("query_username")
    user.save
    
    redirect_to("/users/#{user.username}")
  end
  
  def update
    old_username = params.fetch("old_username")
    matching_users = User.where({ :username => old_username })
    the_user = matching_users.at(0)
    
    the_user.username = params.fetch("query_username")
    the_user.save
    redirect_to("/users/#{the_user.username}")
  end

end
