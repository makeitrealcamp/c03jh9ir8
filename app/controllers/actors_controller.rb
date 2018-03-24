class ActorsController < ApplicationController

def index
  @actores = Actor.all
end

def new
  @actores = Actor.new
end

def create
  @actores = Actor.create(actors_params)
  redirect_to actors_path(@actores)
end

private

def actors_params
  params.require(:actor).permit(:name, :bio, :birth_date, :birth_place, :image_url, :alive, :death_date, :death_place)
end
end
