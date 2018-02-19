class ActorsController < ApplicationController
  def index
    @actor = Actor.all
  end
end
