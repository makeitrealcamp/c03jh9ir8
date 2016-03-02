class ActorsController < ApplicationController




def index

  @actors = Actor.all


end


def new 



end

def create

 render plain: params[:actor].inspect



end

#private
 
 # def article_params
  #  params.require(:actor).permit(:bio, :name, :birth_date, :birth_place, :image_url, :death_date, :death_place)
  #end



end
