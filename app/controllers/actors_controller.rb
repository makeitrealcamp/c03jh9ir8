class ActorsController < ApplicationController

  def new
    @actor = Actor.new
  end

  def create
    @actor = Actor.new(actor_params)
    if @actor.save
      flash[:notice] = 'The actor have been saved'
      redirect_to actors_path
    else
      render :new
    end
  end

  def index
    @actors = Actor.all
  end

  private

  def actor_params
    params.require(:actor).permit(:name,:bio,:birth_date,:birth_place,:image_url,:alive,:death_date,:death_place)
  end

end
