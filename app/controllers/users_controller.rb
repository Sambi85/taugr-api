class UsersController < ApplicationController
  def index
    user = User.all
    render json: users 
  end

end
