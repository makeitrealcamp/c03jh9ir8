class ActorsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
    @actors = Actor.all
  end

  def create
    @actors = Actor.create!(actor_params)
    puts actor_params
    redirect_to actors_path
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
    params.permit(:id, :name, :bio, :birth_date, :birth_place, :image_url, :alive, :death_date, :death_place)
  end
end
