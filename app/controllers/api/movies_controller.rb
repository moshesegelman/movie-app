class Api::MoviesController < ApplicationController
  def all_movies
    @movies = Movie.all
    render 'all_movies.json.jb'
  end

  def movie
    @number = 2
    @movie = Movie.find_by(id: @number)
    render 'movie.json.jb'
  end

  
end
