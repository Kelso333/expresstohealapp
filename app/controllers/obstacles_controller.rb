class ObstaclesController < ApplicationController
     before_action :authorize, except: [:create]

    def index 
      @obstacles = Obstacle.all
    end
    
    def show
      redirect_to obstacles_path(Obstacle.first) and return
      @obstacle = Time.now
    end

    def new
      @obstacle = Obstacle.new
      
    end

    def create
      @obstacle = Obstacle.new(params.require(:obstacle).permit(:obstacle_content))
        @obstacle.person = current_peep 
          if @obstacle.save
            redirect_to obstacles_path
          else
            render :new
          end
    end

end
