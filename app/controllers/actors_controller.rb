class ActorsController < ApplicationController
  def index
    @actors = Actor.all

  end

  def new
    @actor = Actor.new

  end

  def create
    @actor = Actor.new(actor_exposed)
    if @actor.save
      redirect_to actors_path
    else
      @errors = @actor.errors.full_messages
      render "actors/new"
    end
  end

  def actor_exposed
    params.require(:actor).permit(:name, :bio, :birth_date, :birth_place, :image_url, :alive, :death_date, :death_place)
  end
end
