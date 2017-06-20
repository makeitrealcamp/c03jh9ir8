class ActorsController < ApplicationController

  def index
    @actores = Actor.all
  end

  def new

  end

  def guardar
    # actores = params
    #   .require(:actor)
    #   .permit(:name, :bio, :birth_date, :birth_place, :image_url, :alive, :death_date, :death_place)

    #   @sactores = Actor.new actores



    #   if @sactores.save
    #     redirect_to actor_path(@actor)
    #   else 
    #     render :index
    #   end


      @name = params[:nombre]
      @bio = params[:bio]
      @birth_date = params[:fnaniciento]
      @birth_place = params[:lnacimiento]
      @image_url = params[:foto]
      @death_date = params[:ffallecimiento]
      @death_place = params[:lfallecimiento]

      actores = Actor.new name: @name, bio: @bio, birth_date: @birth_date, birth_place: @birth_place, image_url: @image_url, death_date: @death_date, death_place: @death_place
            
      if actores.save
        redirect_to actors_path
      else 
        redirect_to actors_new_path
      end

    
  end

end











