class UserCostumesController < ApplicationController
    def index
        user_costumes = UserCostume.all
        render json: user_costumes 
      end

      def show
        user_costume = UserCostume.find(userCostumeParams)
        render json: user_costume
      end

       def create
        user_costume = UserCostume.create(userCostumeParams)  
        render json: user_costume
      end

      private

      def userCostumeParams
      params.require(:user_costume).permit(:user_id, :costume_id)
      end

end