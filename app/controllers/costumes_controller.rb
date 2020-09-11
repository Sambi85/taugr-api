class CostumesController < ApplicationController
    def index
        costumes = Costume.all
        render json: costumes 
      end

      def show 
        costume = Costume.find(params[:id])
        render json: costume
      end

      def new
        costume = Costume.new
      end

      def create
        costume = Costume.create(costume_params)
        render json: costume
      end
      
      private

      def costume_params
        params.require(:costume).permit(:title, :url, :description)
      end
end