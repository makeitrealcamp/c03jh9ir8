class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end

  def new
  end

  def create
    actor = Actor.new(actor_params)
    if actor.save
      redirect_to actors_path
    end
  end

  private
  def actor_params
    params.require(:actor).permit(:image_url, :name, :bio, :birth_date, :birth_place, :birth_date, :birth_place)
  end

end
