class ActorsController < ApplicationController

  def index
    @actores = Actor.all
    
  end
end
