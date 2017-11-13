class ActorsController < ApplicationController
  def list
    @actors = Actor.all
    # @actors_num = Actor.count
  end

    def new
    @actor = Actor.new
  end

  def create
    actor = Actor.create(actor_params)
    redirect_to actors_path
  end

  def actor_params
    params.require(:actor).permit(:name, :image_url, :bio, :birth_date, :birth_place, :death_date, :death_place)
  end

end
