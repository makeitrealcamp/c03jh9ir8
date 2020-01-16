class ActorsController < ApplicationController
      def index
          @actors = Actor.all
      end

      def show
          @actor = Actor.find(params[:id])
      end

      def new
          @actor = Actor.new
      end

      def create
          @actor = Actor.new(actor_params)
          @actor.save
          redirect_to actors_path, notice:"Actor creado satisfactoriamente"
      end

      private
      def actor_params
          params.require(:actor).permit(:name, :image_url, :bio, :birth_date, :birth_place, :death_date, :death_place)
      end

end
