class ActorsController < ApplicationController
  def index
  @actors = Actor.all
  end

  def new
    @actor= Actor.new
  end

  def create
  @actor = Actor.new(product_params)
    if @actor.save
      redirect_to actors_path
    else
      render :new
    end
  end


  private
    def product_params
      params.require(:actor).permit(:image_url, :name, :bio, :alive, :birth_date, :birth_place, :death_date, :death_place)
    end
end
