class ActorsController < ApplicationController

 def show
  @actors = Actor.all
 end

 def new
  @actor = Actor.new	
 end

end
