class ActorsController < ApplicationController
  def index
  @actors = Actor.all
  @a= @actors.each do |e|
      e
  end
  end

  def new
  @actor = Actor.new
  end

  def create
  actor = Actor.create
  redirect_to actors_path
  end

end
