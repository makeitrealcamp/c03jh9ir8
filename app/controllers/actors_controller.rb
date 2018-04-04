class ActorsController < ApplicationController

  def index
    @actors = Actor.all
  end

  def create
    actor_params =  params.require(:actor).permit!
    if actor_params["death_date"].present? && actor_params["death_place"].present?
      actor_params.merge!({"alive" => false})
    else
      actor_params["alive"] = true
    end
    actor = Actor.new(actor_params)
    if actor.save
      redirect_to actors_path
    end
  end

  def new
    @actor = Actor.new
  end

end
