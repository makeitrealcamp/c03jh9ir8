class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end

  def new
    @actors = Actor.new
  end

  def create
    @actors = Actor.new(user_params)
    if @actors.save
      redirect_to actors_path
    else
      @errors = @actors.errors.full_messages
      render 'actors/new'
    end
  end

  def user_params
    params.require(:actor).permit(:name, :bio, :birth_date, :birth_place, :image_url)
  end

end
