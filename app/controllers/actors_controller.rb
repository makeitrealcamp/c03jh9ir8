class ActorsController < ApplicationController
  def list
    @actors = Actor.all
    # @actors_num = Actor.count
  end
end
