class ActorsController < ApplicationController

  def index
  @actors = Actor.all
  end

  def new
    @actor = Actor.new
    ##tittle y content se renderizan vacios
  end

  def create
    @actor = Actor.new

    if @actor.save
      redirect_to actors_path
    else
      render :new
    end
  end

end


