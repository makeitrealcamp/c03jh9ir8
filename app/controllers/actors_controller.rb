class ActorsController < ApplicationController
    
    def more

    

    end

    def index
        @actors = Actor.all

    end
end
