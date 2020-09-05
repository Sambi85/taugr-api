class CostumesController < ApplicationController
    def index
        costumes = Costume.all
        render json: costumes 
      end
end