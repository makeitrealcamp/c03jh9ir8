class ActorsController < ApplicationController

  def index
    @actors = Actor.all
  end

  def create
    @actor = Actor.new(actor_params)
    if @actor.save
     redirect_to actors_path
   else
     render :new
   end
  end

  def new
    @actor = Actor.new
  end

  private

  def actor_params
    params.require(:actor).permit(:name,:birth_date, :birth_place, :bio)
  end

end
