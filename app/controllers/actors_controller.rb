class ActorsController < ApplicationController

 def show
  @actors = Actor.all
 end

 def new
  @actor = Actor.new	
 end

 def create
   @actor = Actor.new(actor_params)	
   if @actor.save
     redirect_to actors_path, notice: "El Actor Fue publicado con éxito"	
   end
 end

 private
   def actor_params
     params.required(:actor).permit(:name, :bio, :birth_date, :birth_place, :image_url, :alive, :death_date, :death_place)
   end

end
