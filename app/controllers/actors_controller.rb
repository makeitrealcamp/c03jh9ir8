class ActorsController < ApplicationController

  def index
    @actors = Actor.all
  end

  def create
    @actors = Actor.create!(actor_params)
    render json: @actors
  end

  def show
    @actor = Actor.find(actor_params[:id])
  end

  def update
    @actor.update(actor_params)
  end

  def destroy
    @actor.destroy
  end

  private

  def actor_params
    params.permit(:id)
  end

end
