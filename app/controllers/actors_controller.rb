class ActorsController < ApplicationController
  def index
  @actor = Actor.all
  @a= @actor.each do |e|
      e
      end


  end
end
