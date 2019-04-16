class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end

  def new
    @actor = Actor.new
  end

def create
  @actor = Actor.new(actors_params)
  if @actor.save
    redirect_to "/actors"
  end
end

private
def actors_params
  params.require(:actor).permit(:name,:bio,:birth_date, :birth_place,:image_url, :death_date, :death_place, :alive)
end
end
