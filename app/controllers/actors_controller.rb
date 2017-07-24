class ActorsController < ApplicationController

    def view_actors
        @actors = Actor.order(created_at: :desc).limit(10)
    end
end
