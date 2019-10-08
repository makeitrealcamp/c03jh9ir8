class Actor < ActiveRecord::Base
  def index
    @actors = Actor.all
  end
end
