class ActorsController < ApplicationController
  def index
    @actors = Actor.all
    render :home
  end

  def new
    @actor = Actor.new
    render :form
  end

  def create
    actor = Actor.new(actor_parameters)
    actor.save
    redirect_to '/actors'  
  end

  private
  def actor_parameters
    params.require(:actor).permit(:name, :bio, :birth_date, :birth_place, :image_url, :alive, :death_date, :death_place)
  end
end
