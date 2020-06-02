class Api::ActorsController < ApplicationController

  def single_actor
    @id_number = 1
    @actor = Actor.find_by(id: @id_number) 
    render 'single_actor.json.jb'
  end
  def params
    @actor = Actor.find_by(id: params[:id])
    render 'params.json.jb'
  end
end
