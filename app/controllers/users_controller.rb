class UsersController < ApplicationController
  def index
    users = User.all
    render json: users 
  end

  def new
    user = User.new(name)
  end

 def create
  user = User.create(name: name)   
  end

end
