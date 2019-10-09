class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end

  def new
    @actor = Actor.new
  end

  def create
		actor = Actor.create(actor_params)
		redirect_to :controller => 'actors', :action => 'index'
	end

	def actor_params
		params.require(:actor).permit(:name)
		#Creamos este metodo para permitir que en la entrada de texto solo puedan enviar el nombre (en el form que creamos)
	end
end
