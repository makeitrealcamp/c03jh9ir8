class ActorsController < ApplicationController
  def index
   @actores = Actor.all
  end
  def create
  @actores = Actor.new(actor_params)
  if @actores.save
    redirect_to actors_path
  else
    render 'new'
  end
end
def new
    @actores = Actor.new
  end
private
  def actor_params
    params.require(:actor).permit(:name, :death_date, :birth_date, :birth_place, :image_url, :bio, :alive)
  end
end
