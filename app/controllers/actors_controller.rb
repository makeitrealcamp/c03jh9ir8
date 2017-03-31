class ActorsController < ApplicationController
  def show
    @actors = Actor.all
  end
  def new
  end
  def create
    @actor = Actor.new(actor_params)

    @actor.save
    redirect_to @actor
  end
  private
    def actor_params
      params.require(:actor).permit(:name, :bio, :birth_date, :birth_place)
    end
end
