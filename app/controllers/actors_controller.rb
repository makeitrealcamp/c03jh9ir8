class ActorsController < ApplicationController
  def index
    @actors= Actor.all
  end
  def new
  end
  def create
    @actor = Actor.new(actor_params)
    @actor.save
    redirect_to '/actors'
  end
  private
  def actor_params
    params.require(:actor).permit(:name, :bio, :birth_date, :birth_place, :image_url, :alive, :death_date, :death_place)
  end

end
