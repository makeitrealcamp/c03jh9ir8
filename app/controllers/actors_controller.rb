class ActorsController < ApplicationController
  def index
    @Actors=Actor.all
  end

end
