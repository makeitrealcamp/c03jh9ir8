class ActorsController < ApplicationController

    def index
        @actors = Actor.order(created_at: :desc).limit(10)
    end
    def new
        @actors= Actor.new
    end
    def create
        #@actor = current_user.posts.new(post_params)
         @actors = Actor.new(post_params)
        # @post.user_id = current_user.id

        if @actors.save
            redirect_to actors_path, flash: { success: 'The post has been created' }
        else
            render :new
        end
    end

    private 
    def post_params
        params.require(:actor).permit(:name ,:bio , :birth_date , :birth_place , :image_url , :alive ,
        :death_date , :death_place)
    end
end
