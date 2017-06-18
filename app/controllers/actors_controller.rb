class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end
  def new
    @actor = Actor.new
  end
  def create
    actor = params.require(:actor)
    .permit(:name, :bio, :birth_date, :birth_date, :death_date, :death_place, :image_url)
    @actor = Actor.new actor
    if @actor.save
      redirect_to actors_path
    else
      render :new
    end
  end
end
