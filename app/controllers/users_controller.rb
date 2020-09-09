class UsersController < ApplicationController
  def index
    users = User.all
    render json: users 
  end

  def new
    user = User.new
  end

 def create
  user = User.create(userParams)   
  render json: user
  end


  private
  def userParams
    params.require(:user).permit(:name)
  end

end
