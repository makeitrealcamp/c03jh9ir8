class ActorsController < ApplicationController
    def index
      @actor = Actor.all  
    end

    def new
      @actor = Actor.new
    end

    def edit
      # @actors = Actor.find(params[:id])
    end
end
