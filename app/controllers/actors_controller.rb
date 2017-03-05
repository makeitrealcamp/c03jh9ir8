class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end

  def new
    @actors = Actor.new
  end

  def create
    actor = Actor.create(user_params)
  end

  def user_params
    params.require(:actor).permit(:name, :bio, :birth_date, :birth_place, :image_url)
  end

end
