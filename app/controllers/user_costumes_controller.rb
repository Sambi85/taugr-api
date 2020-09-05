class UserCostumesController < ApplicationController
    def index
        user_costumes = UserCostume.all
        render json: user_costumes 
      end
end