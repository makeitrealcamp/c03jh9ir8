class ActorsController < ApplicationController
    
    def new

      @add = Add.new

    end

    def index
        @actors = Actor.all

    end
end
