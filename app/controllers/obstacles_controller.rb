class ObstaclesController < ApplicationController
     before_action :authorize, except: [:create]

    def index 
      @obstacles = Obstacle.all
      @obstacles = Obstacle.order("created_at DESC")
    end
    
    def show
      redirect_to obstacles_path(Obstacle.first) and return
    end

    def edit 
      @obstacle = Obstacle.find(params[:id])
    end

    def update 
      @obstacle = Obstacle.find(params[:id])
      @obstacle.update_attributes(params.require(:obstacle).permit(:obstacle_content, :image))
      redirect_to obstacles_path
    end

    def new
      @obstacle = Obstacle.new
    end

    def create
      @obstacle = Obstacle.new(params.require(:obstacle).permit(:obstacle_content, :image))
        @obstacle.person = current_peep 
          if @obstacle.save
            redirect_to obstacles_path
          else
            render :new
          end
    end

    def destroy
      redirect_to obstacles_path, notice: "Obstacle deleted!"
    end

end
