class ActorsController < ApplicationController
    def index
        @actors = Actor.all
    end

    def new
        @actor = Actor.new
    end

    def create
        actor = Actor.create(actor_params)
        redirect_to actors_path
    end

    def actor_params
        params.require(:actor).permit(:name, :bio)
    end
end
