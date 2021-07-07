class ActorsController < ApplicationController

  def index
    @Actors=Actor.all
  end

  def show
    @Actor=Actor.find(params[:id])
  end

   def new
     @Actor = Actor.new
   end

   def create
     actor = Actor.create(actor_params)
     redirect_to actors_path
   end

   def actor_params
     params.require(:actor).permit(:name, :bio, :birth_date, :birth_place, :image_url, :alive, :death_date, :death_place)
  end
end
