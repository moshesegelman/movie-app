class Api::ActorsController < ApplicationController

  def single_actor
    @id_number = 1
    @actor = Actor.find_by(id: @id_number) 
    render 'single_actor.json.jb'
  end
end
