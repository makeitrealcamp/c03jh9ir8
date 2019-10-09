class Actor < ActiveRecord::Base
  def index
    @actors = Actor.all
  end

  def new
    @actor = Actor.new
  end
end
