class ObstaclesController < ApplicationController

    def index 
      @obstacle = Obstacle.all
    end

  

    def new
      @obstacle = Obstacle.new
    end

    def create
      @obstacle = Obstacle.new(params.require(:obstacle).permit(:obstacle, :content))
        if @obstacle.save
          redirect_to obstacles_path
        else
          render :new
        end
    end

end
