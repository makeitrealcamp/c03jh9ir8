class ActorsController < ApplicationController
  def index
    @actors = Actor.all
    render :home
  end
end
