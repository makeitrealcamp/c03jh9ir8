class ActorsController < ApplicationController

    def index
        @actors = Actor.all
    end

    def new
        @actor = Actor.new
    end

    def create
        actor = Actor.new(params[:actor])
        if actor.save
            redirect_to actors_path
        else
            render :new
        end
    end

end
