class UserCostumesController < ApplicationController
    def index
        user_costumes = UserCostume.all
        render json: user_costumes 
      end

      def show
        user_costume = UserCostume.find(params[:id])
        render json: user_costume
      end
end