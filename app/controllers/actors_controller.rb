class ActorsController < ApplicationController
    def index
      @actor = Actor.all  
    end

    def new
      @actor = Actor.new
    end

    def create
      @actor = Actor.new(actor_params)
      if @actor.save
        redirect_to actors_path, notice: "El actor se guardó con éxito"
      else
        render :new
      end
    end

    private
      def actor_params
        params.require(:actor).permit(:name, :bio, :birth_date, :birth_place, :image_url, :alive, :death_date, :death_place)
      end

    def edit
      # @actors = Actor.find(params[:id])
    end
end
