class ObstaclesController < ApplicationController

    def index
    end

    def new
        @obstacle = Obstacle.new
    end

    def create
         @obstacle = Obstacle.new
    end

end
