class ActorsController < ApplicationController

  def index
    @Actors=Actor.all
  end

   def new
     @Actor = Actor.new
   end
end
