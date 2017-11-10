class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end

  def new
    @actor = Actor.new
  end

  def create
    puts params.class
    @actor = Actor.new(actor_params)
    @actor.save
    redirect_to actors_path
  end

  def actor_params
    params.require(:actor).permit(:name, :image_url, :bio, :birth_date, :birth_place, :death_date, :death_place)
  end
end
