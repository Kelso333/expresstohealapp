class ObstaclesController < ApplicationController

    def index 
      @obstacle = Obstacle.all
    end


    def new
      @obstacle = Obstacle.new
    end

    def create
      @obstacle = Obstacle.new(params.require(:obstacle).permit(:obstacle, :content))

      @obstacle.person = current_peep

      if @obstacle.save
        redirect_to obstacles_path
      else
        render :new
      end
    end

end
