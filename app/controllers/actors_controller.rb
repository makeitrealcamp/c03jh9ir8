class ActorsController < ApplicationController

def index

	@actors = Actor.all
	
end

def new
@actor = Actor.new

end

def create
@actor = Actor.new(actor_params)

if @actor.save
	redirect_to actors_path , notice: "El actor fue creado correctamente"
else

	render :new
    end

end


private
  def actor_params
    params.require(:actor).permit(:name, :image_url, :bio, :birth_date, :birth_place, :death_place, :death_date, :alive)
  end


end
