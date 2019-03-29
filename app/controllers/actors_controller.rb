class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end

  def new
    @actor = Actor.new
  end

  def create
    actor = User.create(user_params)
    redirect_to :index
  end

  def actor_params
     params.require(:actor).permit(:image_url, :name, :bio, :birth_date, :birth_place)
  end
end
