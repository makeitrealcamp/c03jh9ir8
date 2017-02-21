class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end

  def new
    @actors = Actor.new
  end

  def create
    @actors = Actor.new(actor_params)
    if @actors.save
      redirect_to :actors
    else
      render :new
    end
  end

  private
    def actor_params
      params.require(:actor).permit(:name, :bio, :birth_date, :birth_place, :alive, :death_date, :death_place, :image_url)
    end
end
