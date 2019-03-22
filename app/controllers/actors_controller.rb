class ActorsController < ApplicationController

  def actors
    @actors = Actor.all
  end
end
