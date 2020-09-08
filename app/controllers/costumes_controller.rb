class CostumesController < ApplicationController
    def index
        costumes = Costume.all
        render json: costumes 
      end

      def show 
        costume = Costume.find(params[:id])
        render json: costume
      end
end