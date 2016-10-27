class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end
  def new
    @actor = Actor.new
  end
  def create
    @actor = Actor.new(actors_params)
    if @actor.save
      flash[:notice] = 'The Actor has been saved'
      redirect_to actors_path
    end
  end

  private
  def actors_params
    params.require(:actor).permit(:image_url, :name, :bio, :birth_date, :birth_place, :death_date, :death_place)
  end
end
